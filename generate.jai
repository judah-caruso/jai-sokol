LIB_CONFIG :: #string _END
#define SOKOL_DLL
#define SOKOL_IMPL
#define SOKOL_NO_ENTRY
#define SOKOL_NO_DEPRECATED

// Uncomment for specific backend
#define SOKOL_GLCORE33
// #define SOKOL_GLES2
// #define SOKOL_GLES3
// #define SOKOL_D3D11
// #define SOKOL_METAL
// #define SOKOL_WGPU
// #define SOKOL_DUMMY_BACKEND
_END;

LIBS_TO_COMPILE :: string.[
   "sokol_app",
   "sokol_audio" ,
   "sokol_fetch",
   "sokol_gfx",
   "sokol_time",
];

#run {
   set_build_options_dc(.{ do_output = false });

   opt  := get_build_options();
   args := opt.compile_time_command_line;

   debug := false;
   build := false;
   for args if it == {
      case "debug";    debug = it[0] != #char "!";
      case "make-lib"; build = it[0] != #char "!";
   }

   if build then do_build(debug);

   print("Generating bindings...\n");

   for lib_name: LIBS_TO_COMPILE {
      opts: Generate_Bindings_Options;
      array_add(*opts.system_include_paths, GENERATOR_DEFAULT_SYSTEM_INCLUDE_PATH);

      opts.generate_library_declarations = false;

      #if OS == .MACOS {
         array_add(*opts.system_include_paths, "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include");
         array_add(*opts.libpaths, "lib/mac");
         array_add(*opts.libnames, tprint("%.dylib", lib_name));
      }
      else #if OS == .WINDOWS {
         array_add(*opts.libpaths, "lib/win");
         array_add(*opts.libnames, tprint("%.dll", lib_name));
      }

      array_add(*opts.include_paths, "lib/sokol");
      array_add(*opts.source_files, tprint("lib/sokol/%.h", lib_name));

      if !generate_bindings(opts, tprint("%.jai", lib_name)) {
         compiler_set_workspace_status(.FAILED);
         return;
      }
   }
}

do_build :: (debug: bool) {
   old_wd := get_working_directory();
   set_working_directory("lib");
   defer set_working_directory(old_wd);

   print("Building Sokol libraries...\n");

   buf: String_Builder;
   print_to_builder(*buf, LIB_CONFIG);
   if debug then print_to_builder(*buf, "\n#define SOKOL_DEBUG\n");

   str  := builder_to_string(*buf);
   name := "config.inc";
   write_entire_file(name, str);
   defer file_delete(name);

   for lib_name: LIBS_TO_COMPILE {
      print(".. compiling %\n", lib_name);

      #if OS == .WINDOWS {
         BASE  :: "win";
         EXTRA :: string.[];
         LIBS  :: string.[];
      }
      else #if OS == .MACOS {
         BASE  :: "mac";
         LIBS  :: string.[ "-framework", "OpenGL", "-framework", "CoreFoundation", "-framework", "CoreVideo", "-framework", "IOKit", "-framework", "Cocoa", "-framework", "Carbon", "-framework", "AudioToolbox" ];
         EXTRA :: string.[ "-fdeclspec", "-x", "objective-c", "-fno-exceptions", "-fno-rtti", "-fno-threadsafe-statics", "-mmacosx-version-min=10.14" ];
      }
      else #if OS == .LINUX {
         BASE  :: "linux";
         LIBS  :: string.[];
         EXTRA :: string.[];
      }

      make_directory_if_it_does_not_exist(BASE);

      src_file := tprint("%.c", lib_name);
      out_name := tprint("%/%", BASE, lib_name);

      ok :=  build_cpp_dynamic_lib(out_name, src_file, extra=EXTRA, library_files=LIBS, debug=debug);
      ok &&= build_cpp_static_lib(out_name, src_file,  extra=EXTRA, library_files=LIBS, debug=debug);

      if !ok {
         compiler_report(tprint("Unable to compile library: %", lib_name));
         return;
      }
   }
}

#import "File";
#import "Basic";
#import "Compiler";
#import "BuildCpp";
#import "Bindings_Generator";
