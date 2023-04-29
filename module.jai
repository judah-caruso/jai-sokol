#scope_export;

#module_parameters(
   USE_APP   := false,
   USE_AUDIO := false,
   USE_GFX   := false,
   USE_FETCH := false,
   USE_TIME  := false
);

#if USE_APP {
        #if OS == .WINDOWS then sokol_app :: #library "lib/win/sokol_app";
   else #if OS == .MACOS   then sokol_app :: #library "lib/mac/sokol_app";
   else                         sokol_app :: #library "lib/linux/sokol_app";
   #load "sokol_app.jai";
}

#if USE_AUDIO {
        #if OS == .WINDOWS then sokol_audio :: #library "lib/win/sokol_audio";
   else #if OS == .MACOS   then sokol_audio :: #library "lib/mac/sokol_audio";
   else                         sokol_audio :: #library "lib/linux/sokol_audio";
   #load "sokol_audio.jai";
}

#if USE_GFX {
        #if OS == .WINDOWS then sokol_gfx :: #library "lib/win/sokol_gfx";
   else #if OS == .MACOS   then sokol_gfx :: #library "lib/mac/sokol_gfx";
   else                         sokol_gfx :: #library "lib/linux/sokol_gfx";
   #load "sokol_gfx.jai";
}

#if USE_FETCH {
        #if OS == .WINDOWS then sokol_fetch :: #library "lib/win/sokol_fetch";
   else #if OS == .MACOS   then sokol_fetch :: #library "lib/mac/sokol_fetch";
   else                         sokol_fetch :: #library "lib/linux/sokol_fetch";
   #load "sokol_fetch.jai";
}

#if USE_TIME  {
        #if OS == .WINDOWS then sokol_time :: #library "lib/win/sokol_time";
   else #if OS == .MACOS   then sokol_time :: #library "lib/mac/sokol_time";
   else                         sokol_time :: #library "lib/linux/sokol_time";
   #load "sokol_time.jai";
}


#scope_module;

size_t :: u64;
