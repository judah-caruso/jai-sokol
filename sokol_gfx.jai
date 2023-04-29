//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_GFX_INCLUDED :: 1;

/*
Resource id typedefs:

sg_buffer:      vertex- and index-buffers
sg_image:       textures and render targets
sg_shader:      vertex- and fragment-shaders, uniform blocks
sg_pipeline:    associated shader and vertex-layouts, and render states
sg_pass:        a bundle of render targets and actions on them
sg_context:     a 'context handle' for switching between 3D-API contexts

Instead of pointers, resource creation functions return a 32-bit
number which uniquely identifies the resource object.

The 32-bit resource id is split into a 16-bit pool index in the lower bits,
and a 16-bit 'unique counter' in the upper bits. The index allows fast
pool lookups, and combined with the unique-mask it allows to detect
'dangling accesses' (trying to use an object which no longer exists, and
its pool slot has been reused for a new object)

The resource ids are wrapped into a struct so that the compiler
can complain when the wrong resource type is used.
*/
sg_buffer :: struct {
    id: u32;
}
#run {
    instance: sg_buffer;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_buffer.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer.id)) == 4, "sg_buffer.id has unexpected size % instead of 4", size_of(type_of(sg_buffer.id)));
    assert(size_of(sg_buffer) == 4, "sg_buffer has size % instead of 4", size_of(sg_buffer));
}
sg_image :: struct {
    id: u32;
}
#run {
    instance: sg_image;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_image.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image.id)) == 4, "sg_image.id has unexpected size % instead of 4", size_of(type_of(sg_image.id)));
    assert(size_of(sg_image) == 4, "sg_image has size % instead of 4", size_of(sg_image));
}
sg_shader :: struct {
    id: u32;
}
#run {
    instance: sg_shader;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_shader.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader.id)) == 4, "sg_shader.id has unexpected size % instead of 4", size_of(type_of(sg_shader.id)));
    assert(size_of(sg_shader) == 4, "sg_shader has size % instead of 4", size_of(sg_shader));
}
sg_pipeline :: struct {
    id: u32;
}
#run {
    instance: sg_pipeline;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_pipeline.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline.id)) == 4, "sg_pipeline.id has unexpected size % instead of 4", size_of(type_of(sg_pipeline.id)));
    assert(size_of(sg_pipeline) == 4, "sg_pipeline has size % instead of 4", size_of(sg_pipeline));
}
sg_pass :: struct {
    id: u32;
}
#run {
    instance: sg_pass;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_pass.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass.id)) == 4, "sg_pass.id has unexpected size % instead of 4", size_of(type_of(sg_pass.id)));
    assert(size_of(sg_pass) == 4, "sg_pass has size % instead of 4", size_of(sg_pass));
}
sg_context :: struct {
    id: u32;
}
#run {
    instance: sg_context;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sg_context.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context.id)) == 4, "sg_context.id has unexpected size % instead of 4", size_of(type_of(sg_context.id)));
    assert(size_of(sg_context) == 4, "sg_context has size % instead of 4", size_of(sg_context));
}

/*
sg_range is a pointer-size-pair struct used to pass memory blobs into
sokol-gfx. When initialized from a value type (array or struct), you can
use the SG_RANGE() macro to build an sg_range struct. For functions which
take either a sg_range pointer, or a (C++) sg_range reference, use the
SG_RANGE_REF macro as a solution which compiles both in C and C++.
*/
sg_range :: struct {
    ptr:  *void;
    size: size_t;
}
#run {
    instance: sg_range;
    assert(((cast(*void)(*instance.ptr)) - cast(*void)(*instance)) == 0, "sg_range.ptr has unexpected offset % instead of 0", ((cast(*void)(*instance.ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_range.ptr)) == 8, "sg_range.ptr has unexpected size % instead of 8", size_of(type_of(sg_range.ptr)));
    assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 8, "sg_range.size has unexpected offset % instead of 8", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_range.size)) == 8, "sg_range.size has unexpected size % instead of 8", size_of(type_of(sg_range.size)));
    assert(size_of(sg_range) == 16, "sg_range has size % instead of 16", size_of(sg_range));
}

//  various compile-time constants
SG :: enum u32 {
    INVALID_ID              :: 0;
    NUM_SHADER_STAGES       :: 2;
    NUM_INFLIGHT_FRAMES     :: 2;
    MAX_COLOR_ATTACHMENTS   :: 4;
    MAX_SHADERSTAGE_BUFFERS :: 8;
    MAX_SHADERSTAGE_IMAGES  :: 12;
    MAX_SHADERSTAGE_UBS     :: 4;
    MAX_UB_MEMBERS          :: 16;
    MAX_VERTEX_ATTRIBUTES   :: 16;
    MAX_MIPMAPS             :: 16;
    MAX_TEXTUREARRAY_LAYERS :: 128;

    SG_INVALID_ID              :: INVALID_ID;
    SG_NUM_SHADER_STAGES       :: NUM_SHADER_STAGES;
    SG_NUM_INFLIGHT_FRAMES     :: NUM_INFLIGHT_FRAMES;
    SG_MAX_COLOR_ATTACHMENTS   :: MAX_COLOR_ATTACHMENTS;
    SG_MAX_SHADERSTAGE_BUFFERS :: MAX_SHADERSTAGE_BUFFERS;
    SG_MAX_SHADERSTAGE_IMAGES  :: MAX_SHADERSTAGE_IMAGES;
    SG_MAX_SHADERSTAGE_UBS     :: MAX_SHADERSTAGE_UBS;
    SG_MAX_UB_MEMBERS          :: MAX_UB_MEMBERS;
    SG_MAX_VERTEX_ATTRIBUTES   :: MAX_VERTEX_ATTRIBUTES;
    SG_MAX_MIPMAPS             :: MAX_MIPMAPS;
    SG_MAX_TEXTUREARRAY_LAYERS :: MAX_TEXTUREARRAY_LAYERS;
}

/*
sg_color

An RGBA color value.
*/
sg_color :: struct {
    r: float;
    g: float;
    b: float;
    a: float;
}
#run {
    instance: sg_color;
    assert(((cast(*void)(*instance.r)) - cast(*void)(*instance)) == 0, "sg_color.r has unexpected offset % instead of 0", ((cast(*void)(*instance.r)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color.r)) == 4, "sg_color.r has unexpected size % instead of 4", size_of(type_of(sg_color.r)));
    assert(((cast(*void)(*instance.g)) - cast(*void)(*instance)) == 4, "sg_color.g has unexpected offset % instead of 4", ((cast(*void)(*instance.g)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color.g)) == 4, "sg_color.g has unexpected size % instead of 4", size_of(type_of(sg_color.g)));
    assert(((cast(*void)(*instance.b)) - cast(*void)(*instance)) == 8, "sg_color.b has unexpected offset % instead of 8", ((cast(*void)(*instance.b)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color.b)) == 4, "sg_color.b has unexpected size % instead of 4", size_of(type_of(sg_color.b)));
    assert(((cast(*void)(*instance.a)) - cast(*void)(*instance)) == 12, "sg_color.a has unexpected offset % instead of 12", ((cast(*void)(*instance.a)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color.a)) == 4, "sg_color.a has unexpected size % instead of 4", size_of(type_of(sg_color.a)));
    assert(size_of(sg_color) == 16, "sg_color has size % instead of 16", size_of(sg_color));
}

/*
sg_backend

The active 3D-API backend, use the function sg_query_backend()
to get the currently active backend.

NOTE that SG_BACKEND_GLES2 will be returned if sokol-gfx was
compiled with SOKOL_GLES3, but the runtime platform doesn't support
GLES3/WebGL2 and sokol-gfx had to fallback to GLES2/WebGL.
*/
sg_backend :: enum u32 {
    GLCORE33        :: 0;
    GLES2           :: 1;
    GLES3           :: 2;
    D3D11           :: 3;
    METAL_IOS       :: 4;
    METAL_MACOS     :: 5;
    METAL_SIMULATOR :: 6;
    WGPU            :: 7;
    DUMMY           :: 8;

    SG_BACKEND_GLCORE33        :: GLCORE33;
    SG_BACKEND_GLES2           :: GLES2;
    SG_BACKEND_GLES3           :: GLES3;
    SG_BACKEND_D3D11           :: D3D11;
    SG_BACKEND_METAL_IOS       :: METAL_IOS;
    SG_BACKEND_METAL_MACOS     :: METAL_MACOS;
    SG_BACKEND_METAL_SIMULATOR :: METAL_SIMULATOR;
    SG_BACKEND_WGPU            :: WGPU;
    SG_BACKEND_DUMMY           :: DUMMY;
}

/*
sg_pixel_format

sokol_gfx.h basically uses the same pixel formats as WebGPU, since these
are supported on most newer GPUs. GLES2 and WebGL only supports a much
smaller subset of actually available pixel formats. Call
sg_query_pixelformat() to check at runtime if a pixel format supports the
desired features.

A pixelformat name consist of three parts:

- components (R, RG, RGB or RGBA)
- bit width per component (8, 16 or 32)
- component data type:
- unsigned normalized (no postfix)
- signed normalized (SN postfix)
- unsigned integer (UI postfix)
- signed integer (SI postfix)
- float (F postfix)

Not all pixel formats can be used for everything, call sg_query_pixelformat()
to inspect the capabilities of a given pixelformat. The function returns
an sg_pixelformat_info struct with the following bool members:

- sample: the pixelformat can be sampled as texture at least with
nearest filtering
- filter: the pixelformat can be samples as texture with linear
filtering
- render: the pixelformat can be used for render targets
- blend:  blending is supported when using the pixelformat for
render targets
- msaa:   multisample-antialiasing is supported when using the
pixelformat for render targets
- depth:  the pixelformat can be used for depth-stencil attachments

When targeting GLES2/WebGL, the only safe formats to use
as texture are SG_PIXELFORMAT_R8 and SG_PIXELFORMAT_RGBA8. For rendering
in GLES2/WebGL, only SG_PIXELFORMAT_RGBA8 is safe. All other formats
must be checked via sg_query_pixelformats().

The default pixel format for texture images is SG_PIXELFORMAT_RGBA8.

The default pixel format for render target images is platform-dependent:
- for Metal and D3D11 it is SG_PIXELFORMAT_BGRA8
- for GL backends it is SG_PIXELFORMAT_RGBA8

This is mainly because of the default framebuffer which is setup outside
of sokol_gfx.h. On some backends, using BGRA for the default frame buffer
allows more efficient frame flips. For your own offscreen-render-targets,
use whatever renderable pixel format is convenient for you.
*/
sg_pixel_format :: enum u32 {
    SG_PIXELFORMAT_DEFAULT         :: 0;
    SG_PIXELFORMAT_NONE            :: 1;

    SG_PIXELFORMAT_R8              :: 2;
    SG_PIXELFORMAT_R8SN            :: 3;
    SG_PIXELFORMAT_R8UI            :: 4;
    SG_PIXELFORMAT_R8SI            :: 5;

    SG_PIXELFORMAT_R16             :: 6;
    SG_PIXELFORMAT_R16SN           :: 7;
    SG_PIXELFORMAT_R16UI           :: 8;
    SG_PIXELFORMAT_R16SI           :: 9;
    SG_PIXELFORMAT_R16F            :: 10;
    SG_PIXELFORMAT_RG8             :: 11;
    SG_PIXELFORMAT_RG8SN           :: 12;
    SG_PIXELFORMAT_RG8UI           :: 13;
    SG_PIXELFORMAT_RG8SI           :: 14;

    SG_PIXELFORMAT_R32UI           :: 15;
    SG_PIXELFORMAT_R32SI           :: 16;
    SG_PIXELFORMAT_R32F            :: 17;
    SG_PIXELFORMAT_RG16            :: 18;
    SG_PIXELFORMAT_RG16SN          :: 19;
    SG_PIXELFORMAT_RG16UI          :: 20;
    SG_PIXELFORMAT_RG16SI          :: 21;
    SG_PIXELFORMAT_RG16F           :: 22;
    SG_PIXELFORMAT_RGBA8           :: 23;
    SG_PIXELFORMAT_RGBA8SN         :: 24;
    SG_PIXELFORMAT_RGBA8UI         :: 25;
    SG_PIXELFORMAT_RGBA8SI         :: 26;
    SG_PIXELFORMAT_BGRA8           :: 27;
    SG_PIXELFORMAT_RGB10A2         :: 28;
    SG_PIXELFORMAT_RG11B10F        :: 29;

    SG_PIXELFORMAT_RG32UI          :: 30;
    SG_PIXELFORMAT_RG32SI          :: 31;
    SG_PIXELFORMAT_RG32F           :: 32;
    SG_PIXELFORMAT_RGBA16          :: 33;
    SG_PIXELFORMAT_RGBA16SN        :: 34;
    SG_PIXELFORMAT_RGBA16UI        :: 35;
    SG_PIXELFORMAT_RGBA16SI        :: 36;
    SG_PIXELFORMAT_RGBA16F         :: 37;

    SG_PIXELFORMAT_RGBA32UI        :: 38;
    SG_PIXELFORMAT_RGBA32SI        :: 39;
    SG_PIXELFORMAT_RGBA32F         :: 40;

    SG_PIXELFORMAT_DEPTH           :: 41;
    SG_PIXELFORMAT_DEPTH_STENCIL   :: 42;

    SG_PIXELFORMAT_BC1_RGBA        :: 43;
    SG_PIXELFORMAT_BC2_RGBA        :: 44;
    SG_PIXELFORMAT_BC3_RGBA        :: 45;
    SG_PIXELFORMAT_BC4_R           :: 46;
    SG_PIXELFORMAT_BC4_RSN         :: 47;
    SG_PIXELFORMAT_BC5_RG          :: 48;
    SG_PIXELFORMAT_BC5_RGSN        :: 49;
    SG_PIXELFORMAT_BC6H_RGBF       :: 50;
    SG_PIXELFORMAT_BC6H_RGBUF      :: 51;
    SG_PIXELFORMAT_BC7_RGBA        :: 52;
    SG_PIXELFORMAT_PVRTC_RGB_2BPP  :: 53;
    SG_PIXELFORMAT_PVRTC_RGB_4BPP  :: 54;
    SG_PIXELFORMAT_PVRTC_RGBA_2BPP :: 55;
    SG_PIXELFORMAT_PVRTC_RGBA_4BPP :: 56;
    SG_PIXELFORMAT_ETC2_RGB8       :: 57;
    SG_PIXELFORMAT_ETC2_RGB8A1     :: 58;
    SG_PIXELFORMAT_ETC2_RGBA8      :: 59;
    SG_PIXELFORMAT_ETC2_RG11       :: 60;
    SG_PIXELFORMAT_ETC2_RG11SN     :: 61;

    SG_PIXELFORMAT_NUM             :: 62;
    SG_PIXELFORMAT_FORCE_U32       :: 2147483647;

    _SG_PIXELFORMAT_DEFAULT   :: SG_PIXELFORMAT_DEFAULT;

    _SG_PIXELFORMAT_NUM       :: SG_PIXELFORMAT_NUM;
    _SG_PIXELFORMAT_FORCE_U32 :: SG_PIXELFORMAT_FORCE_U32;
}

/*
Runtime information about a pixel format, returned
by sg_query_pixelformat().
*/
sg_pixelformat_info :: struct {
    sample: bool; // pixel format can be sampled in shaders
    filter: bool; // pixel format can be sampled with filtering
    render: bool; // pixel format can be used as render target
    blend:  bool; // alpha-blending is supported
    msaa:   bool; // pixel format can be used as MSAA render target
    depth:  bool; // pixel format is a depth format
}
#run {
    instance: sg_pixelformat_info;
    assert(((cast(*void)(*instance.sample)) - cast(*void)(*instance)) == 0, "sg_pixelformat_info.sample has unexpected offset % instead of 0", ((cast(*void)(*instance.sample)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.sample)) == 1, "sg_pixelformat_info.sample has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.sample)));
    assert(((cast(*void)(*instance.filter)) - cast(*void)(*instance)) == 1, "sg_pixelformat_info.filter has unexpected offset % instead of 1", ((cast(*void)(*instance.filter)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.filter)) == 1, "sg_pixelformat_info.filter has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.filter)));
    assert(((cast(*void)(*instance.render)) - cast(*void)(*instance)) == 2, "sg_pixelformat_info.render has unexpected offset % instead of 2", ((cast(*void)(*instance.render)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.render)) == 1, "sg_pixelformat_info.render has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.render)));
    assert(((cast(*void)(*instance.blend)) - cast(*void)(*instance)) == 3, "sg_pixelformat_info.blend has unexpected offset % instead of 3", ((cast(*void)(*instance.blend)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.blend)) == 1, "sg_pixelformat_info.blend has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.blend)));
    assert(((cast(*void)(*instance.msaa)) - cast(*void)(*instance)) == 4, "sg_pixelformat_info.msaa has unexpected offset % instead of 4", ((cast(*void)(*instance.msaa)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.msaa)) == 1, "sg_pixelformat_info.msaa has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.msaa)));
    assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 5, "sg_pixelformat_info.depth has unexpected offset % instead of 5", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pixelformat_info.depth)) == 1, "sg_pixelformat_info.depth has unexpected size % instead of 1", size_of(type_of(sg_pixelformat_info.depth)));
    assert(size_of(sg_pixelformat_info) == 6, "sg_pixelformat_info has size % instead of 6", size_of(sg_pixelformat_info));
}

/*
Runtime information about available optional features,
returned by sg_query_features()
*/
sg_features :: struct {
    instancing:                  bool; // hardware instancing supported
    origin_top_left:             bool; // framebuffer and texture origin is in top left corner
    multiple_render_targets:     bool; // offscreen render passes can have multiple render targets attached
    msaa_render_targets:         bool; // offscreen render passes support MSAA antialiasing
    imagetype_3d:                bool; // creation of SG_IMAGETYPE_3D images is supported
    imagetype_array:             bool; // creation of SG_IMAGETYPE_ARRAY images is supported
    image_clamp_to_border:       bool; // border color and clamp-to-border UV-wrap mode is supported
    mrt_independent_blend_state: bool; // multiple-render-target rendering can use per-render-target blend state
    mrt_independent_write_mask:  bool; // multiple-render-target rendering can use per-render-target color write masks
}
#run {
    instance: sg_features;
    assert(((cast(*void)(*instance.instancing)) - cast(*void)(*instance)) == 0, "sg_features.instancing has unexpected offset % instead of 0", ((cast(*void)(*instance.instancing)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.instancing)) == 1, "sg_features.instancing has unexpected size % instead of 1", size_of(type_of(sg_features.instancing)));
    assert(((cast(*void)(*instance.origin_top_left)) - cast(*void)(*instance)) == 1, "sg_features.origin_top_left has unexpected offset % instead of 1", ((cast(*void)(*instance.origin_top_left)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.origin_top_left)) == 1, "sg_features.origin_top_left has unexpected size % instead of 1", size_of(type_of(sg_features.origin_top_left)));
    assert(((cast(*void)(*instance.multiple_render_targets)) - cast(*void)(*instance)) == 2, "sg_features.multiple_render_targets has unexpected offset % instead of 2", ((cast(*void)(*instance.multiple_render_targets)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.multiple_render_targets)) == 1, "sg_features.multiple_render_targets has unexpected size % instead of 1", size_of(type_of(sg_features.multiple_render_targets)));
    assert(((cast(*void)(*instance.msaa_render_targets)) - cast(*void)(*instance)) == 3, "sg_features.msaa_render_targets has unexpected offset % instead of 3", ((cast(*void)(*instance.msaa_render_targets)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.msaa_render_targets)) == 1, "sg_features.msaa_render_targets has unexpected size % instead of 1", size_of(type_of(sg_features.msaa_render_targets)));
    assert(((cast(*void)(*instance.imagetype_3d)) - cast(*void)(*instance)) == 4, "sg_features.imagetype_3d has unexpected offset % instead of 4", ((cast(*void)(*instance.imagetype_3d)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.imagetype_3d)) == 1, "sg_features.imagetype_3d has unexpected size % instead of 1", size_of(type_of(sg_features.imagetype_3d)));
    assert(((cast(*void)(*instance.imagetype_array)) - cast(*void)(*instance)) == 5, "sg_features.imagetype_array has unexpected offset % instead of 5", ((cast(*void)(*instance.imagetype_array)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.imagetype_array)) == 1, "sg_features.imagetype_array has unexpected size % instead of 1", size_of(type_of(sg_features.imagetype_array)));
    assert(((cast(*void)(*instance.image_clamp_to_border)) - cast(*void)(*instance)) == 6, "sg_features.image_clamp_to_border has unexpected offset % instead of 6", ((cast(*void)(*instance.image_clamp_to_border)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.image_clamp_to_border)) == 1, "sg_features.image_clamp_to_border has unexpected size % instead of 1", size_of(type_of(sg_features.image_clamp_to_border)));
    assert(((cast(*void)(*instance.mrt_independent_blend_state)) - cast(*void)(*instance)) == 7, "sg_features.mrt_independent_blend_state has unexpected offset % instead of 7", ((cast(*void)(*instance.mrt_independent_blend_state)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.mrt_independent_blend_state)) == 1, "sg_features.mrt_independent_blend_state has unexpected size % instead of 1", size_of(type_of(sg_features.mrt_independent_blend_state)));
    assert(((cast(*void)(*instance.mrt_independent_write_mask)) - cast(*void)(*instance)) == 8, "sg_features.mrt_independent_write_mask has unexpected offset % instead of 8", ((cast(*void)(*instance.mrt_independent_write_mask)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_features.mrt_independent_write_mask)) == 1, "sg_features.mrt_independent_write_mask has unexpected size % instead of 1", size_of(type_of(sg_features.mrt_independent_write_mask)));
    assert(size_of(sg_features) == 9, "sg_features has size % instead of 9", size_of(sg_features));
}

/*
Runtime information about resource limits, returned by sg_query_limit()
*/
sg_limits :: struct {
    max_image_size_2d:             s32; // max width/height of SG_IMAGETYPE_2D images
    max_image_size_cube:           s32; // max width/height of SG_IMAGETYPE_CUBE images
    max_image_size_3d:             s32; // max width/height/depth of SG_IMAGETYPE_3D images
    max_image_size_array:          s32; // max width/height of SG_IMAGETYPE_ARRAY images
    max_image_array_layers:        s32; // max number of layers in SG_IMAGETYPE_ARRAY images
    max_vertex_attrs:              s32; // <= SG_MAX_VERTEX_ATTRIBUTES or less (on some GLES2 impls)
    gl_max_vertex_uniform_vectors: s32; // <= GL_MAX_VERTEX_UNIFORM_VECTORS (only on GL backends)
}
#run {
    instance: sg_limits;
    assert(((cast(*void)(*instance.max_image_size_2d)) - cast(*void)(*instance)) == 0, "sg_limits.max_image_size_2d has unexpected offset % instead of 0", ((cast(*void)(*instance.max_image_size_2d)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_image_size_2d)) == 4, "sg_limits.max_image_size_2d has unexpected size % instead of 4", size_of(type_of(sg_limits.max_image_size_2d)));
    assert(((cast(*void)(*instance.max_image_size_cube)) - cast(*void)(*instance)) == 4, "sg_limits.max_image_size_cube has unexpected offset % instead of 4", ((cast(*void)(*instance.max_image_size_cube)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_image_size_cube)) == 4, "sg_limits.max_image_size_cube has unexpected size % instead of 4", size_of(type_of(sg_limits.max_image_size_cube)));
    assert(((cast(*void)(*instance.max_image_size_3d)) - cast(*void)(*instance)) == 8, "sg_limits.max_image_size_3d has unexpected offset % instead of 8", ((cast(*void)(*instance.max_image_size_3d)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_image_size_3d)) == 4, "sg_limits.max_image_size_3d has unexpected size % instead of 4", size_of(type_of(sg_limits.max_image_size_3d)));
    assert(((cast(*void)(*instance.max_image_size_array)) - cast(*void)(*instance)) == 12, "sg_limits.max_image_size_array has unexpected offset % instead of 12", ((cast(*void)(*instance.max_image_size_array)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_image_size_array)) == 4, "sg_limits.max_image_size_array has unexpected size % instead of 4", size_of(type_of(sg_limits.max_image_size_array)));
    assert(((cast(*void)(*instance.max_image_array_layers)) - cast(*void)(*instance)) == 16, "sg_limits.max_image_array_layers has unexpected offset % instead of 16", ((cast(*void)(*instance.max_image_array_layers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_image_array_layers)) == 4, "sg_limits.max_image_array_layers has unexpected size % instead of 4", size_of(type_of(sg_limits.max_image_array_layers)));
    assert(((cast(*void)(*instance.max_vertex_attrs)) - cast(*void)(*instance)) == 20, "sg_limits.max_vertex_attrs has unexpected offset % instead of 20", ((cast(*void)(*instance.max_vertex_attrs)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.max_vertex_attrs)) == 4, "sg_limits.max_vertex_attrs has unexpected size % instead of 4", size_of(type_of(sg_limits.max_vertex_attrs)));
    assert(((cast(*void)(*instance.gl_max_vertex_uniform_vectors)) - cast(*void)(*instance)) == 24, "sg_limits.gl_max_vertex_uniform_vectors has unexpected offset % instead of 24", ((cast(*void)(*instance.gl_max_vertex_uniform_vectors)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_limits.gl_max_vertex_uniform_vectors)) == 4, "sg_limits.gl_max_vertex_uniform_vectors has unexpected size % instead of 4", size_of(type_of(sg_limits.gl_max_vertex_uniform_vectors)));
    assert(size_of(sg_limits) == 28, "sg_limits has size % instead of 28", size_of(sg_limits));
}

/*
sg_resource_state

The current state of a resource in its resource pool.
Resources start in the INITIAL state, which means the
pool slot is unoccupied and can be allocated. When a resource is
created, first an id is allocated, and the resource pool slot
is set to state ALLOC. After allocation, the resource is
initialized, which may result in the VALID or FAILED state. The
reason why allocation and initialization are separate is because
some resource types (e.g. buffers and images) might be asynchronously
initialized by the user application. If a resource which is not
in the VALID state is attempted to be used for rendering, rendering
operations will silently be dropped.

The special INVALID state is returned in sg_query_xxx_state() if no
resource object exists for the provided resource id.
*/
sg_resource_state :: enum u32 {
    SG_RESOURCESTATE_INITIAL   :: 0;
    SG_RESOURCESTATE_ALLOC     :: 1;
    SG_RESOURCESTATE_VALID     :: 2;
    SG_RESOURCESTATE_FAILED    :: 3;
    SG_RESOURCESTATE_INVALID   :: 4;
    SG_RESOURCESTATE_FORCE_U32 :: 2147483647;
    _SG_RESOURCESTATE_FORCE_U32 :: SG_RESOURCESTATE_FORCE_U32;
}

/*
sg_usage

A resource usage hint describing the update strategy of
buffers and images. This is used in the sg_buffer_desc.usage
and sg_image_desc.usage members when creating buffers
and images:

SG_USAGE_IMMUTABLE:     the resource will never be updated with
new data, instead the content of the
resource must be provided on creation
SG_USAGE_DYNAMIC:       the resource will be updated infrequently
with new data (this could range from "once
after creation", to "quite often but not
every frame")
SG_USAGE_STREAM:        the resource will be updated each frame
with new content

The rendering backends use this hint to prevent that the
CPU needs to wait for the GPU when attempting to update
a resource that might be currently accessed by the GPU.

Resource content is updated with the functions sg_update_buffer() or
sg_append_buffer() for buffer objects, and sg_update_image() for image
objects. For the sg_update_*() functions, only one update is allowed per
frame and resource object, while sg_append_buffer() can be called
multiple times per frame on the same buffer. The application must update
all data required for rendering (this means that the update data can be
smaller than the resource size, if only a part of the overall resource
size is used for rendering, you only need to make sure that the data that
*is* used is valid).

The default usage is SG_USAGE_IMMUTABLE.
*/
sg_usage :: enum u32 {
    SG_USAGE_DEFAULT   :: 0;
    SG_USAGE_IMMUTABLE :: 1;
    SG_USAGE_DYNAMIC   :: 2;
    SG_USAGE_STREAM    :: 3;
    SG_USAGE_NUM       :: 4;
    SG_USAGE_FORCE_U32 :: 2147483647;

    _SG_USAGE_DEFAULT   :: SG_USAGE_DEFAULT;

    _SG_USAGE_NUM       :: SG_USAGE_NUM;
    _SG_USAGE_FORCE_U32 :: SG_USAGE_FORCE_U32;
}

/*
sg_buffer_type

This indicates whether a buffer contains vertex- or index-data,
used in the sg_buffer_desc.type member when creating a buffer.

The default value is SG_BUFFERTYPE_VERTEXBUFFER.
*/
sg_buffer_type :: enum u32 {
    SG_BUFFERTYPE_DEFAULT      :: 0;
    SG_BUFFERTYPE_VERTEXBUFFER :: 1;
    SG_BUFFERTYPE_INDEXBUFFER  :: 2;
    SG_BUFFERTYPE_NUM          :: 3;
    SG_BUFFERTYPE_FORCE_U32    :: 2147483647;

    _SG_BUFFERTYPE_DEFAULT   :: SG_BUFFERTYPE_DEFAULT;

    _SG_BUFFERTYPE_NUM       :: SG_BUFFERTYPE_NUM;
    _SG_BUFFERTYPE_FORCE_U32 :: SG_BUFFERTYPE_FORCE_U32;
}

/*
sg_index_type

Indicates whether indexed rendering (fetching vertex-indices from an
index buffer) is used, and if yes, the index data type (16- or 32-bits).
This is used in the sg_pipeline_desc.index_type member when creating a
pipeline object.

The default index type is SG_INDEXTYPE_NONE.
*/
sg_index_type :: enum u32 {
    SG_INDEXTYPE_DEFAULT   :: 0;
    SG_INDEXTYPE_NONE      :: 1;
    SG_INDEXTYPE_UINT16    :: 2;
    SG_INDEXTYPE_UINT32    :: 3;
    SG_INDEXTYPE_NUM       :: 4;
    SG_INDEXTYPE_FORCE_U32 :: 2147483647;

    _SG_INDEXTYPE_DEFAULT   :: SG_INDEXTYPE_DEFAULT;

    _SG_INDEXTYPE_NUM       :: SG_INDEXTYPE_NUM;
    _SG_INDEXTYPE_FORCE_U32 :: SG_INDEXTYPE_FORCE_U32;
}

/*
sg_image_type

Indicates the basic type of an image object (2D-texture, cubemap,
3D-texture or 2D-array-texture). 3D- and array-textures are not supported
on the GLES2/WebGL backend (use sg_query_features().imagetype_3d and
sg_query_features().imagetype_array to check for support). The image type
is used in the sg_image_desc.type member when creating an image, and
in sg_shader_image_desc when describing a shader's texture sampler binding.

The default image type when creating an image is SG_IMAGETYPE_2D.
*/
sg_image_type :: enum u32 {
    SG_IMAGETYPE_DEFAULT   :: 0;
    SG_IMAGETYPE_2D        :: 1;
    SG_IMAGETYPE_CUBE      :: 2;
    SG_IMAGETYPE_3D        :: 3;
    SG_IMAGETYPE_ARRAY     :: 4;
    SG_IMAGETYPE_NUM       :: 5;
    SG_IMAGETYPE_FORCE_U32 :: 2147483647;

    _SG_IMAGETYPE_DEFAULT   :: SG_IMAGETYPE_DEFAULT;

    _SG_IMAGETYPE_NUM       :: SG_IMAGETYPE_NUM;
    _SG_IMAGETYPE_FORCE_U32 :: SG_IMAGETYPE_FORCE_U32;
}

/*
sg_sampler_type

Indicates the basic data type of a shader's texture sampler which
can be float , unsigned integer or signed integer. The sampler
type is used in the sg_shader_image_desc to describe the
sampler type of a shader's texture sampler binding.

The default sampler type is SG_SAMPLERTYPE_FLOAT.
*/
sg_sampler_type :: enum u32 {
    SG_SAMPLERTYPE_DEFAULT :: 0;
    SG_SAMPLERTYPE_FLOAT   :: 1;
    SG_SAMPLERTYPE_SINT    :: 2;
    SG_SAMPLERTYPE_UINT    :: 3;

    _SG_SAMPLERTYPE_DEFAULT :: SG_SAMPLERTYPE_DEFAULT;
}

/*
sg_cube_face

The cubemap faces. Use these as indices in the sg_image_desc.content
array.
*/
sg_cube_face :: enum u32 {
    SG_CUBEFACE_POS_X     :: 0;
    SG_CUBEFACE_NEG_X     :: 1;
    SG_CUBEFACE_POS_Y     :: 2;
    SG_CUBEFACE_NEG_Y     :: 3;
    SG_CUBEFACE_POS_Z     :: 4;
    SG_CUBEFACE_NEG_Z     :: 5;
    SG_CUBEFACE_NUM       :: 6;
    SG_CUBEFACE_FORCE_U32 :: 2147483647;
    _SG_CUBEFACE_FORCE_U32 :: SG_CUBEFACE_FORCE_U32;
}

/*
sg_shader_stage

There are 2 shader stages: vertex- and fragment-shader-stage.
Each shader stage consists of:

- one slot for a shader function (provided as source- or byte-code)
- SG_MAX_SHADERSTAGE_UBS slots for uniform blocks
- SG_MAX_SHADERSTAGE_IMAGES slots for images used as textures by
the shader function
*/
sg_shader_stage :: enum u32 {
    SG_SHADERSTAGE_VS        :: 0;
    SG_SHADERSTAGE_FS        :: 1;
    SG_SHADERSTAGE_FORCE_U32 :: 2147483647;
    _SG_SHADERSTAGE_FORCE_U32 :: SG_SHADERSTAGE_FORCE_U32;
}

/*
sg_primitive_type

This is the common subset of 3D primitive types supported across all 3D
APIs. This is used in the sg_pipeline_desc.primitive_type member when
creating a pipeline object.

The default primitive type is SG_PRIMITIVETYPE_TRIANGLES.
*/
sg_primitive_type :: enum u32 {
    SG_PRIMITIVETYPE_DEFAULT        :: 0;
    SG_PRIMITIVETYPE_POINTS         :: 1;
    SG_PRIMITIVETYPE_LINES          :: 2;
    SG_PRIMITIVETYPE_LINE_STRIP     :: 3;
    SG_PRIMITIVETYPE_TRIANGLES      :: 4;
    SG_PRIMITIVETYPE_TRIANGLE_STRIP :: 5;
    SG_PRIMITIVETYPE_NUM            :: 6;
    SG_PRIMITIVETYPE_FORCE_U32      :: 2147483647;

    _SG_PRIMITIVETYPE_DEFAULT   :: SG_PRIMITIVETYPE_DEFAULT;

    _SG_PRIMITIVETYPE_NUM       :: SG_PRIMITIVETYPE_NUM;
    _SG_PRIMITIVETYPE_FORCE_U32 :: SG_PRIMITIVETYPE_FORCE_U32;
}

/*
sg_filter

The filtering mode when sampling a texture image. This is
used in the sg_image_desc.min_filter and sg_image_desc.mag_filter
members when creating an image object.

The default filter mode is SG_FILTER_NEAREST.
*/
sg_filter :: enum u32 {
    SG_FILTER_DEFAULT                :: 0;
    SG_FILTER_NEAREST                :: 1;
    SG_FILTER_LINEAR                 :: 2;
    SG_FILTER_NEAREST_MIPMAP_NEAREST :: 3;
    SG_FILTER_NEAREST_MIPMAP_LINEAR  :: 4;
    SG_FILTER_LINEAR_MIPMAP_NEAREST  :: 5;
    SG_FILTER_LINEAR_MIPMAP_LINEAR   :: 6;
    SG_FILTER_NUM                    :: 7;
    SG_FILTER_FORCE_U32              :: 2147483647;

    _SG_FILTER_DEFAULT   :: SG_FILTER_DEFAULT;

    _SG_FILTER_NUM       :: SG_FILTER_NUM;
    _SG_FILTER_FORCE_U32 :: SG_FILTER_FORCE_U32;
}

/*
sg_wrap

The texture coordinates wrapping mode when sampling a texture
image. This is used in the sg_image_desc.wrap_u, .wrap_v
and .wrap_w members when creating an image.

The default wrap mode is SG_WRAP_REPEAT.

NOTE: SG_WRAP_CLAMP_TO_BORDER is not supported on all backends
and platforms. To check for support, call sg_query_features()
and check the "clamp_to_border" boolean in the returned
sg_features struct.

Platforms which don't support SG_WRAP_CLAMP_TO_BORDER will silently fall back
to SG_WRAP_CLAMP_TO_EDGE without a validation error.

Platforms which support clamp-to-border are:

- all desktop GL platforms
- Metal on macOS
- D3D11

Platforms which do not support clamp-to-border:

- GLES2/3 and WebGL/WebGL2
- Metal on iOS
*/
sg_wrap :: enum u32 {
    SG_WRAP_DEFAULT         :: 0;
    SG_WRAP_REPEAT          :: 1;
    SG_WRAP_CLAMP_TO_EDGE   :: 2;
    SG_WRAP_CLAMP_TO_BORDER :: 3;
    SG_WRAP_MIRRORED_REPEAT :: 4;
    SG_WRAP_NUM             :: 5;
    SG_WRAP_FORCE_U32       :: 2147483647;

    _SG_WRAP_DEFAULT   :: SG_WRAP_DEFAULT;

    _SG_WRAP_NUM       :: SG_WRAP_NUM;
    _SG_WRAP_FORCE_U32 :: SG_WRAP_FORCE_U32;
}

/*
sg_border_color

The border color to use when sampling a texture, and the UV wrap
mode is SG_WRAP_CLAMP_TO_BORDER.

The default border color is SG_BORDERCOLOR_OPAQUE_BLACK
*/
sg_border_color :: enum u32 {
    SG_BORDERCOLOR_DEFAULT           :: 0;
    SG_BORDERCOLOR_TRANSPARENT_BLACK :: 1;
    SG_BORDERCOLOR_OPAQUE_BLACK      :: 2;
    SG_BORDERCOLOR_OPAQUE_WHITE      :: 3;
    SG_BORDERCOLOR_NUM               :: 4;
    SG_BORDERCOLOR_FORCE_U32         :: 2147483647;

    _SG_BORDERCOLOR_DEFAULT   :: SG_BORDERCOLOR_DEFAULT;

    _SG_BORDERCOLOR_NUM       :: SG_BORDERCOLOR_NUM;
    _SG_BORDERCOLOR_FORCE_U32 :: SG_BORDERCOLOR_FORCE_U32;
}

/*
sg_vertex_format

The data type of a vertex component. This is used to describe
the layout of vertex data when creating a pipeline object.
*/
sg_vertex_format :: enum u32 {
    SG_VERTEXFORMAT_INVALID   :: 0;
    SG_VERTEXFORMAT_FLOAT     :: 1;
    SG_VERTEXFORMAT_FLOAT2    :: 2;
    SG_VERTEXFORMAT_FLOAT3    :: 3;
    SG_VERTEXFORMAT_FLOAT4    :: 4;
    SG_VERTEXFORMAT_BYTE4     :: 5;
    SG_VERTEXFORMAT_BYTE4N    :: 6;
    SG_VERTEXFORMAT_UBYTE4    :: 7;
    SG_VERTEXFORMAT_UBYTE4N   :: 8;
    SG_VERTEXFORMAT_SHORT2    :: 9;
    SG_VERTEXFORMAT_SHORT2N   :: 10;
    SG_VERTEXFORMAT_USHORT2N  :: 11;
    SG_VERTEXFORMAT_SHORT4    :: 12;
    SG_VERTEXFORMAT_SHORT4N   :: 13;
    SG_VERTEXFORMAT_USHORT4N  :: 14;
    SG_VERTEXFORMAT_UINT10_N2 :: 15;
    SG_VERTEXFORMAT_NUM       :: 16;
    SG_VERTEXFORMAT_FORCE_U32 :: 2147483647;

    _SG_VERTEXFORMAT_NUM       :: SG_VERTEXFORMAT_NUM;
    _SG_VERTEXFORMAT_FORCE_U32 :: SG_VERTEXFORMAT_FORCE_U32;
}

/*
sg_vertex_step

Defines whether the input pointer of a vertex input stream is advanced
'per vertex' or 'per instance'. The default step-func is
SG_VERTEXSTEP_PER_VERTEX. SG_VERTEXSTEP_PER_INSTANCE is used with
instanced-rendering.

The vertex-step is part of the vertex-layout definition
when creating pipeline objects.
*/
sg_vertex_step :: enum u32 {
    SG_VERTEXSTEP_DEFAULT      :: 0;
    SG_VERTEXSTEP_PER_VERTEX   :: 1;
    SG_VERTEXSTEP_PER_INSTANCE :: 2;
    SG_VERTEXSTEP_NUM          :: 3;
    SG_VERTEXSTEP_FORCE_U32    :: 2147483647;

    _SG_VERTEXSTEP_DEFAULT   :: SG_VERTEXSTEP_DEFAULT;

    _SG_VERTEXSTEP_NUM       :: SG_VERTEXSTEP_NUM;
    _SG_VERTEXSTEP_FORCE_U32 :: SG_VERTEXSTEP_FORCE_U32;
}

/*
sg_uniform_type

The data type of a uniform block member. This is used to
describe the internal layout of uniform blocks when creating
a shader object.
*/
sg_uniform_type :: enum u32 {
    SG_UNIFORMTYPE_INVALID   :: 0;
    SG_UNIFORMTYPE_FLOAT     :: 1;
    SG_UNIFORMTYPE_FLOAT2    :: 2;
    SG_UNIFORMTYPE_FLOAT3    :: 3;
    SG_UNIFORMTYPE_FLOAT4    :: 4;
    SG_UNIFORMTYPE_MAT4      :: 5;
    SG_UNIFORMTYPE_NUM       :: 6;
    SG_UNIFORMTYPE_FORCE_U32 :: 2147483647;

    _SG_UNIFORMTYPE_NUM       :: SG_UNIFORMTYPE_NUM;
    _SG_UNIFORMTYPE_FORCE_U32 :: SG_UNIFORMTYPE_FORCE_U32;
}

/*
sg_cull_mode

The face-culling mode, this is used in the
sg_pipeline_desc.cull_mode member when creating a
pipeline object.

The default cull mode is SG_CULLMODE_NONE
*/
sg_cull_mode :: enum u32 {
    SG_CULLMODE_DEFAULT   :: 0;
    SG_CULLMODE_NONE      :: 1;
    SG_CULLMODE_FRONT     :: 2;
    SG_CULLMODE_BACK      :: 3;
    SG_CULLMODE_NUM       :: 4;
    SG_CULLMODE_FORCE_U32 :: 2147483647;

    _SG_CULLMODE_DEFAULT   :: SG_CULLMODE_DEFAULT;

    _SG_CULLMODE_NUM       :: SG_CULLMODE_NUM;
    _SG_CULLMODE_FORCE_U32 :: SG_CULLMODE_FORCE_U32;
}

/*
sg_face_winding

The vertex-winding rule that determines a front-facing primitive. This
is used in the member sg_pipeline_desc.face_winding
when creating a pipeline object.

The default winding is SG_FACEWINDING_CW (clockwise)
*/
sg_face_winding :: enum u32 {
    SG_FACEWINDING_DEFAULT   :: 0;
    SG_FACEWINDING_CCW       :: 1;
    SG_FACEWINDING_CW        :: 2;
    SG_FACEWINDING_NUM       :: 3;
    SG_FACEWINDING_FORCE_U32 :: 2147483647;

    _SG_FACEWINDING_DEFAULT   :: SG_FACEWINDING_DEFAULT;

    _SG_FACEWINDING_NUM       :: SG_FACEWINDING_NUM;
    _SG_FACEWINDING_FORCE_U32 :: SG_FACEWINDING_FORCE_U32;
}

/*
sg_compare_func

The compare-function for depth- and stencil-ref tests.
This is used when creating pipeline objects in the members:

sg_pipeline_desc
.depth
.compare
.stencil
.front.compare
.back.compar

The default compare func for depth- and stencil-tests is
SG_COMPAREFUNC_ALWAYS.
*/
sg_compare_func :: enum u32 {
    SG_COMPAREFUNC_DEFAULT       :: 0;
    SG_COMPAREFUNC_NEVER         :: 1;
    SG_COMPAREFUNC_LESS          :: 2;
    SG_COMPAREFUNC_EQUAL         :: 3;
    SG_COMPAREFUNC_LESS_EQUAL    :: 4;
    SG_COMPAREFUNC_GREATER       :: 5;
    SG_COMPAREFUNC_NOT_EQUAL     :: 6;
    SG_COMPAREFUNC_GREATER_EQUAL :: 7;
    SG_COMPAREFUNC_ALWAYS        :: 8;
    SG_COMPAREFUNC_NUM           :: 9;
    SG_COMPAREFUNC_FORCE_U32     :: 2147483647;

    _SG_COMPAREFUNC_DEFAULT   :: SG_COMPAREFUNC_DEFAULT;

    _SG_COMPAREFUNC_NUM       :: SG_COMPAREFUNC_NUM;
    _SG_COMPAREFUNC_FORCE_U32 :: SG_COMPAREFUNC_FORCE_U32;
}

/*
sg_stencil_op

The operation performed on a currently stored stencil-value when a
comparison test passes or fails. This is used when creating a pipeline
object in the members:

sg_pipeline_desc
.stencil
.front
.fail_op
.depth_fail_op
.pass_op
.back
.fail_op
.depth_fail_op
.pass_op

The default value is SG_STENCILOP_KEEP.
*/
sg_stencil_op :: enum u32 {
    SG_STENCILOP_DEFAULT    :: 0;
    SG_STENCILOP_KEEP       :: 1;
    SG_STENCILOP_ZERO       :: 2;
    SG_STENCILOP_REPLACE    :: 3;
    SG_STENCILOP_INCR_CLAMP :: 4;
    SG_STENCILOP_DECR_CLAMP :: 5;
    SG_STENCILOP_INVERT     :: 6;
    SG_STENCILOP_INCR_WRAP  :: 7;
    SG_STENCILOP_DECR_WRAP  :: 8;
    SG_STENCILOP_NUM        :: 9;
    SG_STENCILOP_FORCE_U32  :: 2147483647;

    _SG_STENCILOP_DEFAULT   :: SG_STENCILOP_DEFAULT;

    _SG_STENCILOP_NUM       :: SG_STENCILOP_NUM;
    _SG_STENCILOP_FORCE_U32 :: SG_STENCILOP_FORCE_U32;
}

/*
sg_blend_factor

The source and destination factors in blending operations.
This is used in the following members when creating a pipeline object:

sg_pipeline_desc
.colors[i]
.blend
.src_factor_rgb
.dst_factor_rgb
.src_factor_alpha
.dst_factor_alpha

The default value is SG_BLENDFACTOR_ONE for source
factors, and SG_BLENDFACTOR_ZERO for destination factors.
*/
sg_blend_factor :: enum u32 {
    SG_BLENDFACTOR_DEFAULT               :: 0;
    SG_BLENDFACTOR_ZERO                  :: 1;
    SG_BLENDFACTOR_ONE                   :: 2;
    SG_BLENDFACTOR_SRC_COLOR             :: 3;
    SG_BLENDFACTOR_ONE_MINUS_SRC_COLOR   :: 4;
    SG_BLENDFACTOR_SRC_ALPHA             :: 5;
    SG_BLENDFACTOR_ONE_MINUS_SRC_ALPHA   :: 6;
    SG_BLENDFACTOR_DST_COLOR             :: 7;
    SG_BLENDFACTOR_ONE_MINUS_DST_COLOR   :: 8;
    SG_BLENDFACTOR_DST_ALPHA             :: 9;
    SG_BLENDFACTOR_ONE_MINUS_DST_ALPHA   :: 10;
    SG_BLENDFACTOR_SRC_ALPHA_SATURATED   :: 11;
    SG_BLENDFACTOR_BLEND_COLOR           :: 12;
    SG_BLENDFACTOR_ONE_MINUS_BLEND_COLOR :: 13;
    SG_BLENDFACTOR_BLEND_ALPHA           :: 14;
    SG_BLENDFACTOR_ONE_MINUS_BLEND_ALPHA :: 15;
    SG_BLENDFACTOR_NUM                   :: 16;
    SG_BLENDFACTOR_FORCE_U32             :: 2147483647;

    _SG_BLENDFACTOR_DEFAULT   :: SG_BLENDFACTOR_DEFAULT;

    _SG_BLENDFACTOR_NUM       :: SG_BLENDFACTOR_NUM;
    _SG_BLENDFACTOR_FORCE_U32 :: SG_BLENDFACTOR_FORCE_U32;
}

/*
sg_blend_op

Describes how the source and destination values are combined in the
fragment blending operation. It is used in the following members when
creating a pipeline object:

sg_pipeline_desc
.colors[i]
.blend
.op_rgb
.op_alpha

The default value is SG_BLENDOP_ADD.
*/
sg_blend_op :: enum u32 {
    SG_BLENDOP_DEFAULT          :: 0;
    SG_BLENDOP_ADD              :: 1;
    SG_BLENDOP_SUBTRACT         :: 2;
    SG_BLENDOP_REVERSE_SUBTRACT :: 3;
    SG_BLENDOP_NUM              :: 4;
    SG_BLENDOP_FORCE_U32        :: 2147483647;

    _SG_BLENDOP_DEFAULT   :: SG_BLENDOP_DEFAULT;

    _SG_BLENDOP_NUM       :: SG_BLENDOP_NUM;
    _SG_BLENDOP_FORCE_U32 :: SG_BLENDOP_FORCE_U32;
}

/*
sg_color_mask

Selects the active color channels when writing a fragment color to the
framebuffer. This is used in the members
sg_pipeline_desc.colors[i].write_mask when creating a pipeline object.

The default colormask is SG_COLORMASK_RGBA (write all colors channels)

NOTE: since the color mask value 0 is reserved for the default value
(SG_COLORMASK_RGBA), use SG_COLORMASK_NONE if all color channels
should be disabled.
*/
sg_color_mask :: enum u32 {
    SG_COLORMASK_DEFAULT   :: 0;
    SG_COLORMASK_NONE      :: 16;
    SG_COLORMASK_R         :: 1;
    SG_COLORMASK_G         :: 2;
    SG_COLORMASK_RG        :: 3;
    SG_COLORMASK_B         :: 4;
    SG_COLORMASK_RB        :: 5;
    SG_COLORMASK_GB        :: 6;
    SG_COLORMASK_RGB       :: 7;
    SG_COLORMASK_A         :: 8;
    SG_COLORMASK_RA        :: 9;
    SG_COLORMASK_GA        :: 10;
    SG_COLORMASK_RGA       :: 11;
    SG_COLORMASK_BA        :: 12;
    SG_COLORMASK_RBA       :: 13;
    SG_COLORMASK_GBA       :: 14;
    SG_COLORMASK_RGBA      :: 15;
    SG_COLORMASK_FORCE_U32 :: 2147483647;

    _SG_COLORMASK_DEFAULT   :: SG_COLORMASK_DEFAULT;

    _SG_COLORMASK_FORCE_U32 :: SG_COLORMASK_FORCE_U32;
}

/*
sg_action

Defines what action should be performed at the start of a render pass:

SG_ACTION_CLEAR:    clear the render target image
SG_ACTION_LOAD:     load the previous content of the render target image
SG_ACTION_DONTCARE: leave the render target image content undefined

This is used in the sg_pass_action structure.

The default action for all pass attachments is SG_ACTION_CLEAR, with the
clear color rgba = {0.5f, 0.5f, 0.5f, 1.0f], depth=1.0 and stencil=0.

If you want to override the default behaviour, it is important to not
only set the clear color, but the 'action' field as well (as long as this
is in its _SG_ACTION_DEFAULT, the value fields will be ignored).
*/
sg_action :: enum u32 {
    SG_ACTION_DEFAULT   :: 0;
    SG_ACTION_CLEAR     :: 1;
    SG_ACTION_LOAD      :: 2;
    SG_ACTION_DONTCARE  :: 3;
    SG_ACTION_NUM       :: 4;
    SG_ACTION_FORCE_U32 :: 2147483647;

    _SG_ACTION_DEFAULT   :: SG_ACTION_DEFAULT;

    _SG_ACTION_NUM       :: SG_ACTION_NUM;
    _SG_ACTION_FORCE_U32 :: SG_ACTION_FORCE_U32;
}

/*
sg_pass_action

The sg_pass_action struct defines the actions to be performed
at the start of a rendering pass in the functions sg_begin_pass()
and sg_begin_default_pass().

A separate action and clear values can be defined for each
color attachment, and for the depth-stencil attachment.

The default clear values are defined by the macros:

- SG_DEFAULT_CLEAR_RED:     0.5f
- SG_DEFAULT_CLEAR_GREEN:   0.5f
- SG_DEFAULT_CLEAR_BLUE:    0.5f
- SG_DEFAULT_CLEAR_ALPHA:   1.0f
- SG_DEFAULT_CLEAR_DEPTH:   1.0f
- SG_DEFAULT_CLEAR_STENCIL: 0
*/
sg_color_attachment_action :: struct {
    action: sg_action;
    value:  sg_color;
}
#run {
    instance: sg_color_attachment_action;
    assert(((cast(*void)(*instance.action)) - cast(*void)(*instance)) == 0, "sg_color_attachment_action.action has unexpected offset % instead of 0", ((cast(*void)(*instance.action)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color_attachment_action.action)) == 4, "sg_color_attachment_action.action has unexpected size % instead of 4", size_of(type_of(sg_color_attachment_action.action)));
    assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 4, "sg_color_attachment_action.value has unexpected offset % instead of 4", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color_attachment_action.value)) == 16, "sg_color_attachment_action.value has unexpected size % instead of 16", size_of(type_of(sg_color_attachment_action.value)));
    assert(size_of(sg_color_attachment_action) == 20, "sg_color_attachment_action has size % instead of 20", size_of(sg_color_attachment_action));
}

sg_depth_attachment_action :: struct {
    action: sg_action;
    value:  float;
}
#run {
    instance: sg_depth_attachment_action;
    assert(((cast(*void)(*instance.action)) - cast(*void)(*instance)) == 0, "sg_depth_attachment_action.action has unexpected offset % instead of 0", ((cast(*void)(*instance.action)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_attachment_action.action)) == 4, "sg_depth_attachment_action.action has unexpected size % instead of 4", size_of(type_of(sg_depth_attachment_action.action)));
    assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 4, "sg_depth_attachment_action.value has unexpected offset % instead of 4", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_attachment_action.value)) == 4, "sg_depth_attachment_action.value has unexpected size % instead of 4", size_of(type_of(sg_depth_attachment_action.value)));
    assert(size_of(sg_depth_attachment_action) == 8, "sg_depth_attachment_action has size % instead of 8", size_of(sg_depth_attachment_action));
}

sg_stencil_attachment_action :: struct {
    action: sg_action;
    value:  u8;
}
#run {
    instance: sg_stencil_attachment_action;
    assert(((cast(*void)(*instance.action)) - cast(*void)(*instance)) == 0, "sg_stencil_attachment_action.action has unexpected offset % instead of 0", ((cast(*void)(*instance.action)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_attachment_action.action)) == 4, "sg_stencil_attachment_action.action has unexpected size % instead of 4", size_of(type_of(sg_stencil_attachment_action.action)));
    assert(((cast(*void)(*instance.value)) - cast(*void)(*instance)) == 4, "sg_stencil_attachment_action.value has unexpected offset % instead of 4", ((cast(*void)(*instance.value)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_attachment_action.value)) == 1, "sg_stencil_attachment_action.value has unexpected size % instead of 1", size_of(type_of(sg_stencil_attachment_action.value)));
    assert(size_of(sg_stencil_attachment_action) == 8, "sg_stencil_attachment_action has size % instead of 8", size_of(sg_stencil_attachment_action));
}

sg_pass_action :: struct {
    _start_canary: u32;
    colors:        [4] sg_color_attachment_action;
    depth:         sg_depth_attachment_action;
    stencil:       sg_stencil_attachment_action;
    _end_canary:   u32;
}
#run {
    instance: sg_pass_action;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_pass_action._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_action._start_canary)) == 4, "sg_pass_action._start_canary has unexpected size % instead of 4", size_of(type_of(sg_pass_action._start_canary)));
    assert(((cast(*void)(*instance.colors)) - cast(*void)(*instance)) == 4, "sg_pass_action.colors has unexpected offset % instead of 4", ((cast(*void)(*instance.colors)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_action.colors)) == 80, "sg_pass_action.colors has unexpected size % instead of 80", size_of(type_of(sg_pass_action.colors)));
    assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 84, "sg_pass_action.depth has unexpected offset % instead of 84", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_action.depth)) == 8, "sg_pass_action.depth has unexpected size % instead of 8", size_of(type_of(sg_pass_action.depth)));
    assert(((cast(*void)(*instance.stencil)) - cast(*void)(*instance)) == 92, "sg_pass_action.stencil has unexpected offset % instead of 92", ((cast(*void)(*instance.stencil)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_action.stencil)) == 8, "sg_pass_action.stencil has unexpected size % instead of 8", size_of(type_of(sg_pass_action.stencil)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 100, "sg_pass_action._end_canary has unexpected offset % instead of 100", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_action._end_canary)) == 4, "sg_pass_action._end_canary has unexpected size % instead of 4", size_of(type_of(sg_pass_action._end_canary)));
    assert(size_of(sg_pass_action) == 104, "sg_pass_action has size % instead of 104", size_of(sg_pass_action));
}

/*
sg_bindings

The sg_bindings structure defines the resource binding slots
of the sokol_gfx render pipeline, used as argument to the
sg_apply_bindings() function.

A resource binding struct contains:

- 1..N vertex buffers
- 0..N vertex buffer offsets
- 0..1 index buffers
- 0..1 index buffer offsets
- 0..N vertex shader stage images
- 0..N fragment shader stage images

The max number of vertex buffer and shader stage images
are defined by the SG_MAX_SHADERSTAGE_BUFFERS and
SG_MAX_SHADERSTAGE_IMAGES configuration constants.

The optional buffer offsets can be used to put different unrelated
chunks of vertex- and/or index-data into the same buffer objects.
*/
sg_bindings :: struct {
    _start_canary:         u32;
    vertex_buffers:        [8] sg_buffer;
    vertex_buffer_offsets: [8] s32;
    index_buffer:          sg_buffer;
    index_buffer_offset:   s32;
    vs_images:             [12] sg_image;
    fs_images:             [12] sg_image;
    _end_canary:           u32;
}
#run {
    instance: sg_bindings;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_bindings._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings._start_canary)) == 4, "sg_bindings._start_canary has unexpected size % instead of 4", size_of(type_of(sg_bindings._start_canary)));
    assert(((cast(*void)(*instance.vertex_buffers)) - cast(*void)(*instance)) == 4, "sg_bindings.vertex_buffers has unexpected offset % instead of 4", ((cast(*void)(*instance.vertex_buffers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.vertex_buffers)) == 32, "sg_bindings.vertex_buffers has unexpected size % instead of 32", size_of(type_of(sg_bindings.vertex_buffers)));
    assert(((cast(*void)(*instance.vertex_buffer_offsets)) - cast(*void)(*instance)) == 36, "sg_bindings.vertex_buffer_offsets has unexpected offset % instead of 36", ((cast(*void)(*instance.vertex_buffer_offsets)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.vertex_buffer_offsets)) == 32, "sg_bindings.vertex_buffer_offsets has unexpected size % instead of 32", size_of(type_of(sg_bindings.vertex_buffer_offsets)));
    assert(((cast(*void)(*instance.index_buffer)) - cast(*void)(*instance)) == 68, "sg_bindings.index_buffer has unexpected offset % instead of 68", ((cast(*void)(*instance.index_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.index_buffer)) == 4, "sg_bindings.index_buffer has unexpected size % instead of 4", size_of(type_of(sg_bindings.index_buffer)));
    assert(((cast(*void)(*instance.index_buffer_offset)) - cast(*void)(*instance)) == 72, "sg_bindings.index_buffer_offset has unexpected offset % instead of 72", ((cast(*void)(*instance.index_buffer_offset)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.index_buffer_offset)) == 4, "sg_bindings.index_buffer_offset has unexpected size % instead of 4", size_of(type_of(sg_bindings.index_buffer_offset)));
    assert(((cast(*void)(*instance.vs_images)) - cast(*void)(*instance)) == 76, "sg_bindings.vs_images has unexpected offset % instead of 76", ((cast(*void)(*instance.vs_images)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.vs_images)) == 48, "sg_bindings.vs_images has unexpected size % instead of 48", size_of(type_of(sg_bindings.vs_images)));
    assert(((cast(*void)(*instance.fs_images)) - cast(*void)(*instance)) == 124, "sg_bindings.fs_images has unexpected offset % instead of 124", ((cast(*void)(*instance.fs_images)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings.fs_images)) == 48, "sg_bindings.fs_images has unexpected size % instead of 48", size_of(type_of(sg_bindings.fs_images)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 172, "sg_bindings._end_canary has unexpected offset % instead of 172", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_bindings._end_canary)) == 4, "sg_bindings._end_canary has unexpected size % instead of 4", size_of(type_of(sg_bindings._end_canary)));
    assert(size_of(sg_bindings) == 176, "sg_bindings has size % instead of 176", size_of(sg_bindings));
}

/*
sg_buffer_desc

Creation parameters for sg_buffer objects, used in the
sg_make_buffer() call.

The default configuration is:

.size:      0       (*must* be >0 for buffers without data)
.type:      SG_BUFFERTYPE_VERTEXBUFFER
.usage:     SG_USAGE_IMMUTABLE
.data.ptr   0       (*must* be valid for immutable buffers)
.data.size  0       (*must* be > 0 for immutable buffers)
.label      0       (optional string label for trace hooks)

The label will be ignored by sokol_gfx.h, it is only useful
when hooking into sg_make_buffer() or sg_init_buffer() via
the sg_install_trace_hooks() function.

For immutable buffers which are initialized with initial data,
keep the .size item zero-initialized, and set the size together with the
pointer to the initial data in the .data item.

For mutable buffers without initial data, keep the .data item
zero-initialized, and set the buffer size in the .size item instead.

You can also set both size values, but currently both size values must
be identical (this may change in the future when the dynamic resource
management may become more flexible).

ADVANCED TOPIC: Injecting native 3D-API buffers:

The following struct members allow to inject your own GL, Metal
or D3D11 buffers into sokol_gfx:

.gl_buffers[SG_NUM_INFLIGHT_FRAMES]
.mtl_buffers[SG_NUM_INFLIGHT_FRAMES]
.d3d11_buffer

You must still provide all other struct items except the .data item, and
these must match the creation parameters of the native buffers you
provide. For SG_USAGE_IMMUTABLE, only provide a single native 3D-API
buffer, otherwise you need to provide SG_NUM_INFLIGHT_FRAMES buffers
(only for GL and Metal, not D3D11). Providing multiple buffers for GL and
Metal is necessary because sokol_gfx will rotate through them when
calling sg_update_buffer() to prevent lock-stalls.

Note that it is expected that immutable injected buffer have already been
initialized with content, and the .content member must be 0!

Also you need to call sg_reset_state_cache() after calling native 3D-API
functions, and before calling any sokol_gfx function.
*/
sg_buffer_desc :: struct {
    _start_canary: u32;
    size:          size_t;
    type:          sg_buffer_type;
    usage:         sg_usage;
    data:          sg_range;
    label:         *u8;

    /* GL specific */
    gl_buffers:    [2] u32;

    /* Metal specific */
    mtl_buffers:   [2] *void;

    /* D3D11 specific */
    d3d11_buffer:  *void;

    /* WebGPU specific */
    wgpu_buffer:   *void;
    _end_canary:   u32;
}
#run {
    instance: sg_buffer_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_buffer_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc._start_canary)) == 4, "sg_buffer_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_buffer_desc._start_canary)));
    assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 8, "sg_buffer_desc.size has unexpected offset % instead of 8", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.size)) == 8, "sg_buffer_desc.size has unexpected size % instead of 8", size_of(type_of(sg_buffer_desc.size)));
    assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 16, "sg_buffer_desc.type has unexpected offset % instead of 16", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.type)) == 4, "sg_buffer_desc.type has unexpected size % instead of 4", size_of(type_of(sg_buffer_desc.type)));
    assert(((cast(*void)(*instance.usage)) - cast(*void)(*instance)) == 20, "sg_buffer_desc.usage has unexpected offset % instead of 20", ((cast(*void)(*instance.usage)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.usage)) == 4, "sg_buffer_desc.usage has unexpected size % instead of 4", size_of(type_of(sg_buffer_desc.usage)));
    assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 24, "sg_buffer_desc.data has unexpected offset % instead of 24", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.data)) == 16, "sg_buffer_desc.data has unexpected size % instead of 16", size_of(type_of(sg_buffer_desc.data)));
    assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 40, "sg_buffer_desc.label has unexpected offset % instead of 40", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.label)) == 8, "sg_buffer_desc.label has unexpected size % instead of 8", size_of(type_of(sg_buffer_desc.label)));
    assert(((cast(*void)(*instance.gl_buffers)) - cast(*void)(*instance)) == 48, "sg_buffer_desc.gl_buffers has unexpected offset % instead of 48", ((cast(*void)(*instance.gl_buffers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.gl_buffers)) == 8, "sg_buffer_desc.gl_buffers has unexpected size % instead of 8", size_of(type_of(sg_buffer_desc.gl_buffers)));
    assert(((cast(*void)(*instance.mtl_buffers)) - cast(*void)(*instance)) == 56, "sg_buffer_desc.mtl_buffers has unexpected offset % instead of 56", ((cast(*void)(*instance.mtl_buffers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.mtl_buffers)) == 16, "sg_buffer_desc.mtl_buffers has unexpected size % instead of 16", size_of(type_of(sg_buffer_desc.mtl_buffers)));
    assert(((cast(*void)(*instance.d3d11_buffer)) - cast(*void)(*instance)) == 72, "sg_buffer_desc.d3d11_buffer has unexpected offset % instead of 72", ((cast(*void)(*instance.d3d11_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.d3d11_buffer)) == 8, "sg_buffer_desc.d3d11_buffer has unexpected size % instead of 8", size_of(type_of(sg_buffer_desc.d3d11_buffer)));
    assert(((cast(*void)(*instance.wgpu_buffer)) - cast(*void)(*instance)) == 80, "sg_buffer_desc.wgpu_buffer has unexpected offset % instead of 80", ((cast(*void)(*instance.wgpu_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc.wgpu_buffer)) == 8, "sg_buffer_desc.wgpu_buffer has unexpected size % instead of 8", size_of(type_of(sg_buffer_desc.wgpu_buffer)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 88, "sg_buffer_desc._end_canary has unexpected offset % instead of 88", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_desc._end_canary)) == 4, "sg_buffer_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_buffer_desc._end_canary)));
    assert(size_of(sg_buffer_desc) == 96, "sg_buffer_desc has size % instead of 96", size_of(sg_buffer_desc));
}

/*
sg_image_data

Defines the content of an image through a 2D array of sg_range structs.
The first array dimension is the cubemap face, and the second array
dimension the mipmap level.
*/
sg_image_data :: struct {
    subimage: [6] [16] sg_range;
}
#run {
    instance: sg_image_data;
    assert(((cast(*void)(*instance.subimage)) - cast(*void)(*instance)) == 0, "sg_image_data.subimage has unexpected offset % instead of 0", ((cast(*void)(*instance.subimage)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_data.subimage)) == 1536, "sg_image_data.subimage has unexpected size % instead of 1536", size_of(type_of(sg_image_data.subimage)));
    assert(size_of(sg_image_data) == 1536, "sg_image_data has size % instead of 1536", size_of(sg_image_data));
}

/*
sg_image_desc

Creation parameters for sg_image objects, used in the sg_make_image()
call.

The default configuration is:

.type:              SG_IMAGETYPE_2D
.render_target:     false
.width              0 (must be set to >0)
.height             0 (must be set to >0)
.num_slices         1 (3D textures: depth; array textures: number of layers)
.num_mipmaps:       1
.usage:             SG_USAGE_IMMUTABLE
.pixel_format:      SG_PIXELFORMAT_RGBA8 for textures, or sg_desc.context.color_format for render targets
.sample_count:      1 for textures, or sg_desc.context.sample_count for render targets
.min_filter:        SG_FILTER_NEAREST
.mag_filter:        SG_FILTER_NEAREST
.wrap_u:            SG_WRAP_REPEAT
.wrap_v:            SG_WRAP_REPEAT
.wrap_w:            SG_WRAP_REPEAT (only SG_IMAGETYPE_3D)
.border_color       SG_BORDERCOLOR_OPAQUE_BLACK
.max_anisotropy     1 (must be 1..16)
.min_lod            0.0f
.max_lod            FLT_MAX
.data               an sg_image_data struct to define the initial content
.label              0       (optional string label for trace hooks)

Q: Why is the default sample_count for render targets identical with the
"default sample count" from sg_desc.context.sample_count?

A: So that it matches the default sample count in pipeline objects. Even
though it is a bit strange/confusing that offscreen render targets by default
get the same sample count as the default framebuffer, but it's better that
an offscreen render target created with default parameters matches
a pipeline object created with default parameters.

NOTE:

SG_IMAGETYPE_ARRAY and SG_IMAGETYPE_3D are not supported on WebGL/GLES2,
use sg_query_features().imagetype_array and
sg_query_features().imagetype_3d at runtime to check if array- and
3D-textures are supported.

Images with usage SG_USAGE_IMMUTABLE must be fully initialized by
providing a valid .data member which points to initialization data.

ADVANCED TOPIC: Injecting native 3D-API textures:

The following struct members allow to inject your own GL, Metal or D3D11
textures into sokol_gfx:

.gl_textures[SG_NUM_INFLIGHT_FRAMES]
.mtl_textures[SG_NUM_INFLIGHT_FRAMES]
.d3d11_texture
.d3d11_shader_resource_view

For GL, you can also specify the texture target or leave it empty to use
the default texture target for the image type (GL_TEXTURE_2D for
SG_IMAGETYPE_2D etc)

For D3D11, you can provide either a D3D11 texture, or a
shader-resource-view, or both. If only a texture is provided, a matching
shader-resource-view will be created. If only a shader-resource-view is
provided, the texture will be looked up from the shader-resource-view.

The same rules apply as for injecting native buffers (see sg_buffer_desc
documentation for more details).
*/
sg_image_desc :: struct {
    _start_canary:              u32;
    type:                       sg_image_type;
    render_target:              bool;
    width:                      s32;
    height:                     s32;
    num_slices:                 s32;
    num_mipmaps:                s32;
    usage:                      sg_usage;
    pixel_format:               sg_pixel_format;
    sample_count:               s32;
    min_filter:                 sg_filter;
    mag_filter:                 sg_filter;
    wrap_u:                     sg_wrap;
    wrap_v:                     sg_wrap;
    wrap_w:                     sg_wrap;
    border_color:               sg_border_color;
    max_anisotropy:             u32;
    min_lod:                    float;
    max_lod:                    float;
    data:                       sg_image_data;
    label:                      *u8;

    /* GL specific */
    gl_textures:                [2] u32;
    gl_texture_target:          u32;

    /* Metal specific */
    mtl_textures:               [2] *void;

    /* D3D11 specific */
    d3d11_texture:              *void;
    d3d11_shader_resource_view: *void;

    /* WebGPU specific */
    wgpu_texture:               *void;
    _end_canary:                u32;
}
#run {
    instance: sg_image_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_image_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc._start_canary)) == 4, "sg_image_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_image_desc._start_canary)));
    assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 4, "sg_image_desc.type has unexpected offset % instead of 4", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.type)) == 4, "sg_image_desc.type has unexpected size % instead of 4", size_of(type_of(sg_image_desc.type)));
    assert(((cast(*void)(*instance.render_target)) - cast(*void)(*instance)) == 8, "sg_image_desc.render_target has unexpected offset % instead of 8", ((cast(*void)(*instance.render_target)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.render_target)) == 1, "sg_image_desc.render_target has unexpected size % instead of 1", size_of(type_of(sg_image_desc.render_target)));
    assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 12, "sg_image_desc.width has unexpected offset % instead of 12", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.width)) == 4, "sg_image_desc.width has unexpected size % instead of 4", size_of(type_of(sg_image_desc.width)));
    assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 16, "sg_image_desc.height has unexpected offset % instead of 16", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.height)) == 4, "sg_image_desc.height has unexpected size % instead of 4", size_of(type_of(sg_image_desc.height)));
    assert(((cast(*void)(*instance.num_slices)) - cast(*void)(*instance)) == 20, "sg_image_desc.num_slices has unexpected offset % instead of 20", ((cast(*void)(*instance.num_slices)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.num_slices)) == 4, "sg_image_desc.num_slices has unexpected size % instead of 4", size_of(type_of(sg_image_desc.num_slices)));
    assert(((cast(*void)(*instance.num_mipmaps)) - cast(*void)(*instance)) == 24, "sg_image_desc.num_mipmaps has unexpected offset % instead of 24", ((cast(*void)(*instance.num_mipmaps)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.num_mipmaps)) == 4, "sg_image_desc.num_mipmaps has unexpected size % instead of 4", size_of(type_of(sg_image_desc.num_mipmaps)));
    assert(((cast(*void)(*instance.usage)) - cast(*void)(*instance)) == 28, "sg_image_desc.usage has unexpected offset % instead of 28", ((cast(*void)(*instance.usage)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.usage)) == 4, "sg_image_desc.usage has unexpected size % instead of 4", size_of(type_of(sg_image_desc.usage)));
    assert(((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)) == 32, "sg_image_desc.pixel_format has unexpected offset % instead of 32", ((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.pixel_format)) == 4, "sg_image_desc.pixel_format has unexpected size % instead of 4", size_of(type_of(sg_image_desc.pixel_format)));
    assert(((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)) == 36, "sg_image_desc.sample_count has unexpected offset % instead of 36", ((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.sample_count)) == 4, "sg_image_desc.sample_count has unexpected size % instead of 4", size_of(type_of(sg_image_desc.sample_count)));
    assert(((cast(*void)(*instance.min_filter)) - cast(*void)(*instance)) == 40, "sg_image_desc.min_filter has unexpected offset % instead of 40", ((cast(*void)(*instance.min_filter)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.min_filter)) == 4, "sg_image_desc.min_filter has unexpected size % instead of 4", size_of(type_of(sg_image_desc.min_filter)));
    assert(((cast(*void)(*instance.mag_filter)) - cast(*void)(*instance)) == 44, "sg_image_desc.mag_filter has unexpected offset % instead of 44", ((cast(*void)(*instance.mag_filter)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.mag_filter)) == 4, "sg_image_desc.mag_filter has unexpected size % instead of 4", size_of(type_of(sg_image_desc.mag_filter)));
    assert(((cast(*void)(*instance.wrap_u)) - cast(*void)(*instance)) == 48, "sg_image_desc.wrap_u has unexpected offset % instead of 48", ((cast(*void)(*instance.wrap_u)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.wrap_u)) == 4, "sg_image_desc.wrap_u has unexpected size % instead of 4", size_of(type_of(sg_image_desc.wrap_u)));
    assert(((cast(*void)(*instance.wrap_v)) - cast(*void)(*instance)) == 52, "sg_image_desc.wrap_v has unexpected offset % instead of 52", ((cast(*void)(*instance.wrap_v)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.wrap_v)) == 4, "sg_image_desc.wrap_v has unexpected size % instead of 4", size_of(type_of(sg_image_desc.wrap_v)));
    assert(((cast(*void)(*instance.wrap_w)) - cast(*void)(*instance)) == 56, "sg_image_desc.wrap_w has unexpected offset % instead of 56", ((cast(*void)(*instance.wrap_w)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.wrap_w)) == 4, "sg_image_desc.wrap_w has unexpected size % instead of 4", size_of(type_of(sg_image_desc.wrap_w)));
    assert(((cast(*void)(*instance.border_color)) - cast(*void)(*instance)) == 60, "sg_image_desc.border_color has unexpected offset % instead of 60", ((cast(*void)(*instance.border_color)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.border_color)) == 4, "sg_image_desc.border_color has unexpected size % instead of 4", size_of(type_of(sg_image_desc.border_color)));
    assert(((cast(*void)(*instance.max_anisotropy)) - cast(*void)(*instance)) == 64, "sg_image_desc.max_anisotropy has unexpected offset % instead of 64", ((cast(*void)(*instance.max_anisotropy)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.max_anisotropy)) == 4, "sg_image_desc.max_anisotropy has unexpected size % instead of 4", size_of(type_of(sg_image_desc.max_anisotropy)));
    assert(((cast(*void)(*instance.min_lod)) - cast(*void)(*instance)) == 68, "sg_image_desc.min_lod has unexpected offset % instead of 68", ((cast(*void)(*instance.min_lod)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.min_lod)) == 4, "sg_image_desc.min_lod has unexpected size % instead of 4", size_of(type_of(sg_image_desc.min_lod)));
    assert(((cast(*void)(*instance.max_lod)) - cast(*void)(*instance)) == 72, "sg_image_desc.max_lod has unexpected offset % instead of 72", ((cast(*void)(*instance.max_lod)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.max_lod)) == 4, "sg_image_desc.max_lod has unexpected size % instead of 4", size_of(type_of(sg_image_desc.max_lod)));
    assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 80, "sg_image_desc.data has unexpected offset % instead of 80", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.data)) == 1536, "sg_image_desc.data has unexpected size % instead of 1536", size_of(type_of(sg_image_desc.data)));
    assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 1616, "sg_image_desc.label has unexpected offset % instead of 1616", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.label)) == 8, "sg_image_desc.label has unexpected size % instead of 8", size_of(type_of(sg_image_desc.label)));
    assert(((cast(*void)(*instance.gl_textures)) - cast(*void)(*instance)) == 1624, "sg_image_desc.gl_textures has unexpected offset % instead of 1624", ((cast(*void)(*instance.gl_textures)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.gl_textures)) == 8, "sg_image_desc.gl_textures has unexpected size % instead of 8", size_of(type_of(sg_image_desc.gl_textures)));
    assert(((cast(*void)(*instance.gl_texture_target)) - cast(*void)(*instance)) == 1632, "sg_image_desc.gl_texture_target has unexpected offset % instead of 1632", ((cast(*void)(*instance.gl_texture_target)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.gl_texture_target)) == 4, "sg_image_desc.gl_texture_target has unexpected size % instead of 4", size_of(type_of(sg_image_desc.gl_texture_target)));
    assert(((cast(*void)(*instance.mtl_textures)) - cast(*void)(*instance)) == 1640, "sg_image_desc.mtl_textures has unexpected offset % instead of 1640", ((cast(*void)(*instance.mtl_textures)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.mtl_textures)) == 16, "sg_image_desc.mtl_textures has unexpected size % instead of 16", size_of(type_of(sg_image_desc.mtl_textures)));
    assert(((cast(*void)(*instance.d3d11_texture)) - cast(*void)(*instance)) == 1656, "sg_image_desc.d3d11_texture has unexpected offset % instead of 1656", ((cast(*void)(*instance.d3d11_texture)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.d3d11_texture)) == 8, "sg_image_desc.d3d11_texture has unexpected size % instead of 8", size_of(type_of(sg_image_desc.d3d11_texture)));
    assert(((cast(*void)(*instance.d3d11_shader_resource_view)) - cast(*void)(*instance)) == 1664, "sg_image_desc.d3d11_shader_resource_view has unexpected offset % instead of 1664", ((cast(*void)(*instance.d3d11_shader_resource_view)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.d3d11_shader_resource_view)) == 8, "sg_image_desc.d3d11_shader_resource_view has unexpected size % instead of 8", size_of(type_of(sg_image_desc.d3d11_shader_resource_view)));
    assert(((cast(*void)(*instance.wgpu_texture)) - cast(*void)(*instance)) == 1672, "sg_image_desc.wgpu_texture has unexpected offset % instead of 1672", ((cast(*void)(*instance.wgpu_texture)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc.wgpu_texture)) == 8, "sg_image_desc.wgpu_texture has unexpected size % instead of 8", size_of(type_of(sg_image_desc.wgpu_texture)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 1680, "sg_image_desc._end_canary has unexpected offset % instead of 1680", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_desc._end_canary)) == 4, "sg_image_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_image_desc._end_canary)));
    assert(size_of(sg_image_desc) == 1688, "sg_image_desc has size % instead of 1688", size_of(sg_image_desc));
}

/*
sg_shader_desc

The structure sg_shader_desc defines all creation parameters for shader
programs, used as input to the sg_make_shader() function:

- reflection information for vertex attributes (vertex shader inputs):
- vertex attribute name (required for GLES2, optional for GLES3 and GL)
- a semantic name and index (required for D3D11)
- for each shader-stage (vertex and fragment):
- the shader source or bytecode
- an optional entry function name
- an optional compile target (only for D3D11 when source is provided,
defaults are "vs_4_0" and "ps_4_0")
- reflection info for each uniform block used by the shader stage:
- the size of the uniform block in bytes
- reflection info for each uniform block member (only required for GL backends):
- member name
- member type (SG_UNIFORMTYPE_xxx)
- if the member is an array, the number of array items
- reflection info for the texture images used by the shader stage:
- the image type (SG_IMAGETYPE_xxx)
- the sampler type (SG_SAMPLERTYPE_xxx, default is SG_SAMPLERTYPE_FLOAT)
- the name of the texture sampler (required for GLES2, optional everywhere else)

For all GL backends, shader source-code must be provided. For D3D11 and Metal,
either shader source-code or byte-code can be provided.

For D3D11, if source code is provided, the d3dcompiler_47.dll will be loaded
on demand. If this fails, shader creation will fail. When compiling HLSL
source code, you can provide an optional target string via
sg_shader_stage_desc.d3d11_target, the default target is "vs_4_0" for the
vertex shader stage and "ps_4_0" for the pixel shader stage.
*/
sg_shader_attr_desc :: struct {
    name:      *u8; // GLSL vertex attribute name (only strictly required for GLES2)
    sem_name:  *u8; // HLSL semantic name
    sem_index: s32; // HLSL semantic index
}
#run {
    instance: sg_shader_attr_desc;
    assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "sg_shader_attr_desc.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_attr_desc.name)) == 8, "sg_shader_attr_desc.name has unexpected size % instead of 8", size_of(type_of(sg_shader_attr_desc.name)));
    assert(((cast(*void)(*instance.sem_name)) - cast(*void)(*instance)) == 8, "sg_shader_attr_desc.sem_name has unexpected offset % instead of 8", ((cast(*void)(*instance.sem_name)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_attr_desc.sem_name)) == 8, "sg_shader_attr_desc.sem_name has unexpected size % instead of 8", size_of(type_of(sg_shader_attr_desc.sem_name)));
    assert(((cast(*void)(*instance.sem_index)) - cast(*void)(*instance)) == 16, "sg_shader_attr_desc.sem_index has unexpected offset % instead of 16", ((cast(*void)(*instance.sem_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_attr_desc.sem_index)) == 4, "sg_shader_attr_desc.sem_index has unexpected size % instead of 4", size_of(type_of(sg_shader_attr_desc.sem_index)));
    assert(size_of(sg_shader_attr_desc) == 24, "sg_shader_attr_desc has size % instead of 24", size_of(sg_shader_attr_desc));
}

sg_shader_uniform_desc :: struct {
    name:        *u8;
    type:        sg_uniform_type;
    array_count: s32;
}
#run {
    instance: sg_shader_uniform_desc;
    assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "sg_shader_uniform_desc.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_uniform_desc.name)) == 8, "sg_shader_uniform_desc.name has unexpected size % instead of 8", size_of(type_of(sg_shader_uniform_desc.name)));
    assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "sg_shader_uniform_desc.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_uniform_desc.type)) == 4, "sg_shader_uniform_desc.type has unexpected size % instead of 4", size_of(type_of(sg_shader_uniform_desc.type)));
    assert(((cast(*void)(*instance.array_count)) - cast(*void)(*instance)) == 12, "sg_shader_uniform_desc.array_count has unexpected offset % instead of 12", ((cast(*void)(*instance.array_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_uniform_desc.array_count)) == 4, "sg_shader_uniform_desc.array_count has unexpected size % instead of 4", size_of(type_of(sg_shader_uniform_desc.array_count)));
    assert(size_of(sg_shader_uniform_desc) == 16, "sg_shader_uniform_desc has size % instead of 16", size_of(sg_shader_uniform_desc));
}

sg_shader_uniform_block_desc :: struct {
    size:     size_t;
    uniforms: [16] sg_shader_uniform_desc;
}
#run {
    instance: sg_shader_uniform_block_desc;
    assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 0, "sg_shader_uniform_block_desc.size has unexpected offset % instead of 0", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_uniform_block_desc.size)) == 8, "sg_shader_uniform_block_desc.size has unexpected size % instead of 8", size_of(type_of(sg_shader_uniform_block_desc.size)));
    assert(((cast(*void)(*instance.uniforms)) - cast(*void)(*instance)) == 8, "sg_shader_uniform_block_desc.uniforms has unexpected offset % instead of 8", ((cast(*void)(*instance.uniforms)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_uniform_block_desc.uniforms)) == 256, "sg_shader_uniform_block_desc.uniforms has unexpected size % instead of 256", size_of(type_of(sg_shader_uniform_block_desc.uniforms)));
    assert(size_of(sg_shader_uniform_block_desc) == 264, "sg_shader_uniform_block_desc has size % instead of 264", size_of(sg_shader_uniform_block_desc));
}

sg_shader_image_desc :: struct {
    name:         *u8;
    image_type:   sg_image_type;
    sampler_type: sg_sampler_type;
}
#run {
    instance: sg_shader_image_desc;
    assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "sg_shader_image_desc.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_image_desc.name)) == 8, "sg_shader_image_desc.name has unexpected size % instead of 8", size_of(type_of(sg_shader_image_desc.name)));
    assert(((cast(*void)(*instance.image_type)) - cast(*void)(*instance)) == 8, "sg_shader_image_desc.image_type has unexpected offset % instead of 8", ((cast(*void)(*instance.image_type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_image_desc.image_type)) == 4, "sg_shader_image_desc.image_type has unexpected size % instead of 4", size_of(type_of(sg_shader_image_desc.image_type)));
    assert(((cast(*void)(*instance.sampler_type)) - cast(*void)(*instance)) == 12, "sg_shader_image_desc.sampler_type has unexpected offset % instead of 12", ((cast(*void)(*instance.sampler_type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_image_desc.sampler_type)) == 4, "sg_shader_image_desc.sampler_type has unexpected size % instead of 4", size_of(type_of(sg_shader_image_desc.sampler_type)));
    assert(size_of(sg_shader_image_desc) == 16, "sg_shader_image_desc has size % instead of 16", size_of(sg_shader_image_desc));
}

sg_shader_stage_desc :: struct {
    source:         *u8;
    bytecode:       sg_range;
    entry:          *u8;
    d3d11_target:   *u8;
    uniform_blocks: [4] sg_shader_uniform_block_desc;
    images:         [12] sg_shader_image_desc;
}
#run {
    instance: sg_shader_stage_desc;
    assert(((cast(*void)(*instance.source)) - cast(*void)(*instance)) == 0, "sg_shader_stage_desc.source has unexpected offset % instead of 0", ((cast(*void)(*instance.source)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.source)) == 8, "sg_shader_stage_desc.source has unexpected size % instead of 8", size_of(type_of(sg_shader_stage_desc.source)));
    assert(((cast(*void)(*instance.bytecode)) - cast(*void)(*instance)) == 8, "sg_shader_stage_desc.bytecode has unexpected offset % instead of 8", ((cast(*void)(*instance.bytecode)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.bytecode)) == 16, "sg_shader_stage_desc.bytecode has unexpected size % instead of 16", size_of(type_of(sg_shader_stage_desc.bytecode)));
    assert(((cast(*void)(*instance.entry)) - cast(*void)(*instance)) == 24, "sg_shader_stage_desc.entry has unexpected offset % instead of 24", ((cast(*void)(*instance.entry)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.entry)) == 8, "sg_shader_stage_desc.entry has unexpected size % instead of 8", size_of(type_of(sg_shader_stage_desc.entry)));
    assert(((cast(*void)(*instance.d3d11_target)) - cast(*void)(*instance)) == 32, "sg_shader_stage_desc.d3d11_target has unexpected offset % instead of 32", ((cast(*void)(*instance.d3d11_target)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.d3d11_target)) == 8, "sg_shader_stage_desc.d3d11_target has unexpected size % instead of 8", size_of(type_of(sg_shader_stage_desc.d3d11_target)));
    assert(((cast(*void)(*instance.uniform_blocks)) - cast(*void)(*instance)) == 40, "sg_shader_stage_desc.uniform_blocks has unexpected offset % instead of 40", ((cast(*void)(*instance.uniform_blocks)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.uniform_blocks)) == 1056, "sg_shader_stage_desc.uniform_blocks has unexpected size % instead of 1056", size_of(type_of(sg_shader_stage_desc.uniform_blocks)));
    assert(((cast(*void)(*instance.images)) - cast(*void)(*instance)) == 1096, "sg_shader_stage_desc.images has unexpected offset % instead of 1096", ((cast(*void)(*instance.images)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_stage_desc.images)) == 192, "sg_shader_stage_desc.images has unexpected size % instead of 192", size_of(type_of(sg_shader_stage_desc.images)));
    assert(size_of(sg_shader_stage_desc) == 1288, "sg_shader_stage_desc has size % instead of 1288", size_of(sg_shader_stage_desc));
}

sg_shader_desc :: struct {
    _start_canary: u32;
    attrs:         [16] sg_shader_attr_desc;
    vs:            sg_shader_stage_desc;
    fs:            sg_shader_stage_desc;
    label:         *u8;
    _end_canary:   u32;
}
#run {
    instance: sg_shader_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_shader_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc._start_canary)) == 4, "sg_shader_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_shader_desc._start_canary)));
    assert(((cast(*void)(*instance.attrs)) - cast(*void)(*instance)) == 8, "sg_shader_desc.attrs has unexpected offset % instead of 8", ((cast(*void)(*instance.attrs)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc.attrs)) == 384, "sg_shader_desc.attrs has unexpected size % instead of 384", size_of(type_of(sg_shader_desc.attrs)));
    assert(((cast(*void)(*instance.vs)) - cast(*void)(*instance)) == 392, "sg_shader_desc.vs has unexpected offset % instead of 392", ((cast(*void)(*instance.vs)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc.vs)) == 1288, "sg_shader_desc.vs has unexpected size % instead of 1288", size_of(type_of(sg_shader_desc.vs)));
    assert(((cast(*void)(*instance.fs)) - cast(*void)(*instance)) == 1680, "sg_shader_desc.fs has unexpected offset % instead of 1680", ((cast(*void)(*instance.fs)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc.fs)) == 1288, "sg_shader_desc.fs has unexpected size % instead of 1288", size_of(type_of(sg_shader_desc.fs)));
    assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 2968, "sg_shader_desc.label has unexpected offset % instead of 2968", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc.label)) == 8, "sg_shader_desc.label has unexpected size % instead of 8", size_of(type_of(sg_shader_desc.label)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 2976, "sg_shader_desc._end_canary has unexpected offset % instead of 2976", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_desc._end_canary)) == 4, "sg_shader_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_shader_desc._end_canary)));
    assert(size_of(sg_shader_desc) == 2984, "sg_shader_desc has size % instead of 2984", size_of(sg_shader_desc));
}

/*
sg_pipeline_desc

The sg_pipeline_desc struct defines all creation parameters for an
sg_pipeline object, used as argument to the sg_make_pipeline() function:

- the vertex layout for all input vertex buffers
- a shader object
- the 3D primitive type (points, lines, triangles, ...)
- the index type (none, 16- or 32-bit)
- all the fixed-function-pipeline state (depth-, stencil-, blend-state, etc...)

If the vertex data has no gaps between vertex components, you can omit
the .layout.buffers[].stride and layout.attrs[].offset items (leave them
default-initialized to 0), sokol-gfx will then compute the offsets and
strides from the vertex component formats (.layout.attrs[].format).
Please note that ALL vertex attribute offsets must be 0 in order for the
automatic offset computation to kick in.

The default configuration is as follows:

.shader:            0 (must be initialized with a valid sg_shader id!)
.layout:
.buffers[]:         vertex buffer layouts
.stride:        0 (if no stride is given it will be computed)
.step_func      SG_VERTEXSTEP_PER_VERTEX
.step_rate      1
.attrs[]:           vertex attribute declarations
.buffer_index   0 the vertex buffer bind slot
.offset         0 (offsets can be omitted if the vertex layout has no gaps)
.format         SG_VERTEXFORMAT_INVALID (must be initialized!)
.depth:
.pixel_format:      sg_desc.context.depth_format
.compare:           SG_COMPAREFUNC_ALWAYS
.write_enabled:     false
.bias:              0.0f
.bias_slope_scale:  0.0f
.bias_clamp:        0.0f
.stencil:
.enabled:           false
.front/back:
.compare:       SG_COMPAREFUNC_ALWAYS
.depth_fail_op: SG_STENCILOP_KEEP
.pass_op:       SG_STENCILOP_KEEP
.compare:       SG_COMPAREFUNC_ALWAYS
.read_mask:         0
.write_mask:        0
.ref:               0
.color_count            1
.colors[0..color_count]
.pixel_format       sg_desc.context.color_format
.write_mask:        SG_COLORMASK_RGBA
.blend:
.enabled:           false
.src_factor_rgb:    SG_BLENDFACTOR_ONE
.dst_factor_rgb:    SG_BLENDFACTOR_ZERO
.op_rgb:            SG_BLENDOP_ADD
.src_factor_alpha:  SG_BLENDFACTOR_ONE
.dst_factor_alpha:  SG_BLENDFACTOR_ZERO
.op_alpha:          SG_BLENDOP_ADD
.primitive_type:            SG_PRIMITIVETYPE_TRIANGLES
.index_type:                SG_INDEXTYPE_NONE
.cull_mode:                 SG_CULLMODE_NONE
.face_winding:              SG_FACEWINDING_CW
.sample_count:              sg_desc.context.sample_count
.blend_color:               (sg_color) { 0.0f, 0.0f, 0.0f, 0.0f }
.alpha_to_coverage_enabled: false
.label  0       (optional string label for trace hooks)
*/
sg_buffer_layout_desc :: struct {
    stride:    s32;
    step_func: sg_vertex_step;
    step_rate: s32;
}
#run {
    instance: sg_buffer_layout_desc;
    assert(((cast(*void)(*instance.stride)) - cast(*void)(*instance)) == 0, "sg_buffer_layout_desc.stride has unexpected offset % instead of 0", ((cast(*void)(*instance.stride)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_layout_desc.stride)) == 4, "sg_buffer_layout_desc.stride has unexpected size % instead of 4", size_of(type_of(sg_buffer_layout_desc.stride)));
    assert(((cast(*void)(*instance.step_func)) - cast(*void)(*instance)) == 4, "sg_buffer_layout_desc.step_func has unexpected offset % instead of 4", ((cast(*void)(*instance.step_func)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_layout_desc.step_func)) == 4, "sg_buffer_layout_desc.step_func has unexpected size % instead of 4", size_of(type_of(sg_buffer_layout_desc.step_func)));
    assert(((cast(*void)(*instance.step_rate)) - cast(*void)(*instance)) == 8, "sg_buffer_layout_desc.step_rate has unexpected offset % instead of 8", ((cast(*void)(*instance.step_rate)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_layout_desc.step_rate)) == 4, "sg_buffer_layout_desc.step_rate has unexpected size % instead of 4", size_of(type_of(sg_buffer_layout_desc.step_rate)));
    assert(size_of(sg_buffer_layout_desc) == 12, "sg_buffer_layout_desc has size % instead of 12", size_of(sg_buffer_layout_desc));
}

sg_vertex_attr_desc :: struct {
    buffer_index: s32;
    offset:       s32;
    format:       sg_vertex_format;
}
#run {
    instance: sg_vertex_attr_desc;
    assert(((cast(*void)(*instance.buffer_index)) - cast(*void)(*instance)) == 0, "sg_vertex_attr_desc.buffer_index has unexpected offset % instead of 0", ((cast(*void)(*instance.buffer_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_vertex_attr_desc.buffer_index)) == 4, "sg_vertex_attr_desc.buffer_index has unexpected size % instead of 4", size_of(type_of(sg_vertex_attr_desc.buffer_index)));
    assert(((cast(*void)(*instance.offset)) - cast(*void)(*instance)) == 4, "sg_vertex_attr_desc.offset has unexpected offset % instead of 4", ((cast(*void)(*instance.offset)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_vertex_attr_desc.offset)) == 4, "sg_vertex_attr_desc.offset has unexpected size % instead of 4", size_of(type_of(sg_vertex_attr_desc.offset)));
    assert(((cast(*void)(*instance.format)) - cast(*void)(*instance)) == 8, "sg_vertex_attr_desc.format has unexpected offset % instead of 8", ((cast(*void)(*instance.format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_vertex_attr_desc.format)) == 4, "sg_vertex_attr_desc.format has unexpected size % instead of 4", size_of(type_of(sg_vertex_attr_desc.format)));
    assert(size_of(sg_vertex_attr_desc) == 12, "sg_vertex_attr_desc has size % instead of 12", size_of(sg_vertex_attr_desc));
}

sg_layout_desc :: struct {
    buffers: [8] sg_buffer_layout_desc;
    attrs:   [16] sg_vertex_attr_desc;
}
#run {
    instance: sg_layout_desc;
    assert(((cast(*void)(*instance.buffers)) - cast(*void)(*instance)) == 0, "sg_layout_desc.buffers has unexpected offset % instead of 0", ((cast(*void)(*instance.buffers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_layout_desc.buffers)) == 96, "sg_layout_desc.buffers has unexpected size % instead of 96", size_of(type_of(sg_layout_desc.buffers)));
    assert(((cast(*void)(*instance.attrs)) - cast(*void)(*instance)) == 96, "sg_layout_desc.attrs has unexpected offset % instead of 96", ((cast(*void)(*instance.attrs)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_layout_desc.attrs)) == 192, "sg_layout_desc.attrs has unexpected size % instead of 192", size_of(type_of(sg_layout_desc.attrs)));
    assert(size_of(sg_layout_desc) == 288, "sg_layout_desc has size % instead of 288", size_of(sg_layout_desc));
}

sg_stencil_face_state :: struct {
    compare:       sg_compare_func;
    fail_op:       sg_stencil_op;
    depth_fail_op: sg_stencil_op;
    pass_op:       sg_stencil_op;
}
#run {
    instance: sg_stencil_face_state;
    assert(((cast(*void)(*instance.compare)) - cast(*void)(*instance)) == 0, "sg_stencil_face_state.compare has unexpected offset % instead of 0", ((cast(*void)(*instance.compare)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_face_state.compare)) == 4, "sg_stencil_face_state.compare has unexpected size % instead of 4", size_of(type_of(sg_stencil_face_state.compare)));
    assert(((cast(*void)(*instance.fail_op)) - cast(*void)(*instance)) == 4, "sg_stencil_face_state.fail_op has unexpected offset % instead of 4", ((cast(*void)(*instance.fail_op)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_face_state.fail_op)) == 4, "sg_stencil_face_state.fail_op has unexpected size % instead of 4", size_of(type_of(sg_stencil_face_state.fail_op)));
    assert(((cast(*void)(*instance.depth_fail_op)) - cast(*void)(*instance)) == 8, "sg_stencil_face_state.depth_fail_op has unexpected offset % instead of 8", ((cast(*void)(*instance.depth_fail_op)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_face_state.depth_fail_op)) == 4, "sg_stencil_face_state.depth_fail_op has unexpected size % instead of 4", size_of(type_of(sg_stencil_face_state.depth_fail_op)));
    assert(((cast(*void)(*instance.pass_op)) - cast(*void)(*instance)) == 12, "sg_stencil_face_state.pass_op has unexpected offset % instead of 12", ((cast(*void)(*instance.pass_op)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_face_state.pass_op)) == 4, "sg_stencil_face_state.pass_op has unexpected size % instead of 4", size_of(type_of(sg_stencil_face_state.pass_op)));
    assert(size_of(sg_stencil_face_state) == 16, "sg_stencil_face_state has size % instead of 16", size_of(sg_stencil_face_state));
}

sg_stencil_state :: struct {
    enabled:    bool;
    front:      sg_stencil_face_state;
    back:       sg_stencil_face_state;
    read_mask:  u8;
    write_mask: u8;
    ref:        u8;
}
#run {
    instance: sg_stencil_state;
    assert(((cast(*void)(*instance.enabled)) - cast(*void)(*instance)) == 0, "sg_stencil_state.enabled has unexpected offset % instead of 0", ((cast(*void)(*instance.enabled)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.enabled)) == 1, "sg_stencil_state.enabled has unexpected size % instead of 1", size_of(type_of(sg_stencil_state.enabled)));
    assert(((cast(*void)(*instance.front)) - cast(*void)(*instance)) == 4, "sg_stencil_state.front has unexpected offset % instead of 4", ((cast(*void)(*instance.front)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.front)) == 16, "sg_stencil_state.front has unexpected size % instead of 16", size_of(type_of(sg_stencil_state.front)));
    assert(((cast(*void)(*instance.back)) - cast(*void)(*instance)) == 20, "sg_stencil_state.back has unexpected offset % instead of 20", ((cast(*void)(*instance.back)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.back)) == 16, "sg_stencil_state.back has unexpected size % instead of 16", size_of(type_of(sg_stencil_state.back)));
    assert(((cast(*void)(*instance.read_mask)) - cast(*void)(*instance)) == 36, "sg_stencil_state.read_mask has unexpected offset % instead of 36", ((cast(*void)(*instance.read_mask)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.read_mask)) == 1, "sg_stencil_state.read_mask has unexpected size % instead of 1", size_of(type_of(sg_stencil_state.read_mask)));
    assert(((cast(*void)(*instance.write_mask)) - cast(*void)(*instance)) == 37, "sg_stencil_state.write_mask has unexpected offset % instead of 37", ((cast(*void)(*instance.write_mask)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.write_mask)) == 1, "sg_stencil_state.write_mask has unexpected size % instead of 1", size_of(type_of(sg_stencil_state.write_mask)));
    assert(((cast(*void)(*instance.ref)) - cast(*void)(*instance)) == 38, "sg_stencil_state.ref has unexpected offset % instead of 38", ((cast(*void)(*instance.ref)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_stencil_state.ref)) == 1, "sg_stencil_state.ref has unexpected size % instead of 1", size_of(type_of(sg_stencil_state.ref)));
    assert(size_of(sg_stencil_state) == 40, "sg_stencil_state has size % instead of 40", size_of(sg_stencil_state));
}

sg_depth_state :: struct {
    pixel_format:     sg_pixel_format;
    compare:          sg_compare_func;
    write_enabled:    bool;
    bias:             float;
    bias_slope_scale: float;
    bias_clamp:       float;
}
#run {
    instance: sg_depth_state;
    assert(((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)) == 0, "sg_depth_state.pixel_format has unexpected offset % instead of 0", ((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.pixel_format)) == 4, "sg_depth_state.pixel_format has unexpected size % instead of 4", size_of(type_of(sg_depth_state.pixel_format)));
    assert(((cast(*void)(*instance.compare)) - cast(*void)(*instance)) == 4, "sg_depth_state.compare has unexpected offset % instead of 4", ((cast(*void)(*instance.compare)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.compare)) == 4, "sg_depth_state.compare has unexpected size % instead of 4", size_of(type_of(sg_depth_state.compare)));
    assert(((cast(*void)(*instance.write_enabled)) - cast(*void)(*instance)) == 8, "sg_depth_state.write_enabled has unexpected offset % instead of 8", ((cast(*void)(*instance.write_enabled)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.write_enabled)) == 1, "sg_depth_state.write_enabled has unexpected size % instead of 1", size_of(type_of(sg_depth_state.write_enabled)));
    assert(((cast(*void)(*instance.bias)) - cast(*void)(*instance)) == 12, "sg_depth_state.bias has unexpected offset % instead of 12", ((cast(*void)(*instance.bias)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.bias)) == 4, "sg_depth_state.bias has unexpected size % instead of 4", size_of(type_of(sg_depth_state.bias)));
    assert(((cast(*void)(*instance.bias_slope_scale)) - cast(*void)(*instance)) == 16, "sg_depth_state.bias_slope_scale has unexpected offset % instead of 16", ((cast(*void)(*instance.bias_slope_scale)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.bias_slope_scale)) == 4, "sg_depth_state.bias_slope_scale has unexpected size % instead of 4", size_of(type_of(sg_depth_state.bias_slope_scale)));
    assert(((cast(*void)(*instance.bias_clamp)) - cast(*void)(*instance)) == 20, "sg_depth_state.bias_clamp has unexpected offset % instead of 20", ((cast(*void)(*instance.bias_clamp)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_depth_state.bias_clamp)) == 4, "sg_depth_state.bias_clamp has unexpected size % instead of 4", size_of(type_of(sg_depth_state.bias_clamp)));
    assert(size_of(sg_depth_state) == 24, "sg_depth_state has size % instead of 24", size_of(sg_depth_state));
}

sg_blend_state :: struct {
    enabled:          bool;
    src_factor_rgb:   sg_blend_factor;
    dst_factor_rgb:   sg_blend_factor;
    op_rgb:           sg_blend_op;
    src_factor_alpha: sg_blend_factor;
    dst_factor_alpha: sg_blend_factor;
    op_alpha:         sg_blend_op;
}
#run {
    instance: sg_blend_state;
    assert(((cast(*void)(*instance.enabled)) - cast(*void)(*instance)) == 0, "sg_blend_state.enabled has unexpected offset % instead of 0", ((cast(*void)(*instance.enabled)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.enabled)) == 1, "sg_blend_state.enabled has unexpected size % instead of 1", size_of(type_of(sg_blend_state.enabled)));
    assert(((cast(*void)(*instance.src_factor_rgb)) - cast(*void)(*instance)) == 4, "sg_blend_state.src_factor_rgb has unexpected offset % instead of 4", ((cast(*void)(*instance.src_factor_rgb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.src_factor_rgb)) == 4, "sg_blend_state.src_factor_rgb has unexpected size % instead of 4", size_of(type_of(sg_blend_state.src_factor_rgb)));
    assert(((cast(*void)(*instance.dst_factor_rgb)) - cast(*void)(*instance)) == 8, "sg_blend_state.dst_factor_rgb has unexpected offset % instead of 8", ((cast(*void)(*instance.dst_factor_rgb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.dst_factor_rgb)) == 4, "sg_blend_state.dst_factor_rgb has unexpected size % instead of 4", size_of(type_of(sg_blend_state.dst_factor_rgb)));
    assert(((cast(*void)(*instance.op_rgb)) - cast(*void)(*instance)) == 12, "sg_blend_state.op_rgb has unexpected offset % instead of 12", ((cast(*void)(*instance.op_rgb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.op_rgb)) == 4, "sg_blend_state.op_rgb has unexpected size % instead of 4", size_of(type_of(sg_blend_state.op_rgb)));
    assert(((cast(*void)(*instance.src_factor_alpha)) - cast(*void)(*instance)) == 16, "sg_blend_state.src_factor_alpha has unexpected offset % instead of 16", ((cast(*void)(*instance.src_factor_alpha)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.src_factor_alpha)) == 4, "sg_blend_state.src_factor_alpha has unexpected size % instead of 4", size_of(type_of(sg_blend_state.src_factor_alpha)));
    assert(((cast(*void)(*instance.dst_factor_alpha)) - cast(*void)(*instance)) == 20, "sg_blend_state.dst_factor_alpha has unexpected offset % instead of 20", ((cast(*void)(*instance.dst_factor_alpha)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.dst_factor_alpha)) == 4, "sg_blend_state.dst_factor_alpha has unexpected size % instead of 4", size_of(type_of(sg_blend_state.dst_factor_alpha)));
    assert(((cast(*void)(*instance.op_alpha)) - cast(*void)(*instance)) == 24, "sg_blend_state.op_alpha has unexpected offset % instead of 24", ((cast(*void)(*instance.op_alpha)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_blend_state.op_alpha)) == 4, "sg_blend_state.op_alpha has unexpected size % instead of 4", size_of(type_of(sg_blend_state.op_alpha)));
    assert(size_of(sg_blend_state) == 28, "sg_blend_state has size % instead of 28", size_of(sg_blend_state));
}

sg_color_state :: struct {
    pixel_format: sg_pixel_format;
    write_mask:   sg_color_mask;
    blend:        sg_blend_state;
}
#run {
    instance: sg_color_state;
    assert(((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)) == 0, "sg_color_state.pixel_format has unexpected offset % instead of 0", ((cast(*void)(*instance.pixel_format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color_state.pixel_format)) == 4, "sg_color_state.pixel_format has unexpected size % instead of 4", size_of(type_of(sg_color_state.pixel_format)));
    assert(((cast(*void)(*instance.write_mask)) - cast(*void)(*instance)) == 4, "sg_color_state.write_mask has unexpected offset % instead of 4", ((cast(*void)(*instance.write_mask)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color_state.write_mask)) == 4, "sg_color_state.write_mask has unexpected size % instead of 4", size_of(type_of(sg_color_state.write_mask)));
    assert(((cast(*void)(*instance.blend)) - cast(*void)(*instance)) == 8, "sg_color_state.blend has unexpected offset % instead of 8", ((cast(*void)(*instance.blend)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_color_state.blend)) == 28, "sg_color_state.blend has unexpected size % instead of 28", size_of(type_of(sg_color_state.blend)));
    assert(size_of(sg_color_state) == 36, "sg_color_state has size % instead of 36", size_of(sg_color_state));
}

sg_pipeline_desc :: struct {
    _start_canary:             u32;
    shader:                    sg_shader;
    layout:                    sg_layout_desc;
    depth:                     sg_depth_state;
    stencil:                   sg_stencil_state;
    color_count:               s32;
    colors:                    [4] sg_color_state;
    primitive_type:            sg_primitive_type;
    index_type:                sg_index_type;
    cull_mode:                 sg_cull_mode;
    face_winding:              sg_face_winding;
    sample_count:              s32;
    blend_color:               sg_color;
    alpha_to_coverage_enabled: bool;
    label:                     *u8;
    _end_canary:               u32;
}
#run {
    instance: sg_pipeline_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_pipeline_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc._start_canary)) == 4, "sg_pipeline_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc._start_canary)));
    assert(((cast(*void)(*instance.shader)) - cast(*void)(*instance)) == 4, "sg_pipeline_desc.shader has unexpected offset % instead of 4", ((cast(*void)(*instance.shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.shader)) == 4, "sg_pipeline_desc.shader has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.shader)));
    assert(((cast(*void)(*instance.layout)) - cast(*void)(*instance)) == 8, "sg_pipeline_desc.layout has unexpected offset % instead of 8", ((cast(*void)(*instance.layout)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.layout)) == 288, "sg_pipeline_desc.layout has unexpected size % instead of 288", size_of(type_of(sg_pipeline_desc.layout)));
    assert(((cast(*void)(*instance.depth)) - cast(*void)(*instance)) == 296, "sg_pipeline_desc.depth has unexpected offset % instead of 296", ((cast(*void)(*instance.depth)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.depth)) == 24, "sg_pipeline_desc.depth has unexpected size % instead of 24", size_of(type_of(sg_pipeline_desc.depth)));
    assert(((cast(*void)(*instance.stencil)) - cast(*void)(*instance)) == 320, "sg_pipeline_desc.stencil has unexpected offset % instead of 320", ((cast(*void)(*instance.stencil)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.stencil)) == 40, "sg_pipeline_desc.stencil has unexpected size % instead of 40", size_of(type_of(sg_pipeline_desc.stencil)));
    assert(((cast(*void)(*instance.color_count)) - cast(*void)(*instance)) == 360, "sg_pipeline_desc.color_count has unexpected offset % instead of 360", ((cast(*void)(*instance.color_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.color_count)) == 4, "sg_pipeline_desc.color_count has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.color_count)));
    assert(((cast(*void)(*instance.colors)) - cast(*void)(*instance)) == 364, "sg_pipeline_desc.colors has unexpected offset % instead of 364", ((cast(*void)(*instance.colors)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.colors)) == 144, "sg_pipeline_desc.colors has unexpected size % instead of 144", size_of(type_of(sg_pipeline_desc.colors)));
    assert(((cast(*void)(*instance.primitive_type)) - cast(*void)(*instance)) == 508, "sg_pipeline_desc.primitive_type has unexpected offset % instead of 508", ((cast(*void)(*instance.primitive_type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.primitive_type)) == 4, "sg_pipeline_desc.primitive_type has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.primitive_type)));
    assert(((cast(*void)(*instance.index_type)) - cast(*void)(*instance)) == 512, "sg_pipeline_desc.index_type has unexpected offset % instead of 512", ((cast(*void)(*instance.index_type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.index_type)) == 4, "sg_pipeline_desc.index_type has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.index_type)));
    assert(((cast(*void)(*instance.cull_mode)) - cast(*void)(*instance)) == 516, "sg_pipeline_desc.cull_mode has unexpected offset % instead of 516", ((cast(*void)(*instance.cull_mode)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.cull_mode)) == 4, "sg_pipeline_desc.cull_mode has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.cull_mode)));
    assert(((cast(*void)(*instance.face_winding)) - cast(*void)(*instance)) == 520, "sg_pipeline_desc.face_winding has unexpected offset % instead of 520", ((cast(*void)(*instance.face_winding)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.face_winding)) == 4, "sg_pipeline_desc.face_winding has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.face_winding)));
    assert(((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)) == 524, "sg_pipeline_desc.sample_count has unexpected offset % instead of 524", ((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.sample_count)) == 4, "sg_pipeline_desc.sample_count has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc.sample_count)));
    assert(((cast(*void)(*instance.blend_color)) - cast(*void)(*instance)) == 528, "sg_pipeline_desc.blend_color has unexpected offset % instead of 528", ((cast(*void)(*instance.blend_color)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.blend_color)) == 16, "sg_pipeline_desc.blend_color has unexpected size % instead of 16", size_of(type_of(sg_pipeline_desc.blend_color)));
    assert(((cast(*void)(*instance.alpha_to_coverage_enabled)) - cast(*void)(*instance)) == 544, "sg_pipeline_desc.alpha_to_coverage_enabled has unexpected offset % instead of 544", ((cast(*void)(*instance.alpha_to_coverage_enabled)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.alpha_to_coverage_enabled)) == 1, "sg_pipeline_desc.alpha_to_coverage_enabled has unexpected size % instead of 1", size_of(type_of(sg_pipeline_desc.alpha_to_coverage_enabled)));
    assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 552, "sg_pipeline_desc.label has unexpected offset % instead of 552", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc.label)) == 8, "sg_pipeline_desc.label has unexpected size % instead of 8", size_of(type_of(sg_pipeline_desc.label)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 560, "sg_pipeline_desc._end_canary has unexpected offset % instead of 560", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_desc._end_canary)) == 4, "sg_pipeline_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_pipeline_desc._end_canary)));
    assert(size_of(sg_pipeline_desc) == 568, "sg_pipeline_desc has size % instead of 568", size_of(sg_pipeline_desc));
}

/*
sg_pass_desc

Creation parameters for an sg_pass object, used as argument
to the sg_make_pass() function.

A pass object contains 1..4 color-attachments and none, or one,
depth-stencil-attachment. Each attachment consists of
an image, and two additional indices describing
which subimage the pass will render to: one mipmap index, and
if the image is a cubemap, array-texture or 3D-texture, the
face-index, array-layer or depth-slice.

Pass images must fulfill the following requirements:

All images must have:
- been created as render target (sg_image_desc.render_target = true)
- the same size
- the same sample count

In addition, all color-attachment images must have the same pixel format.
*/
sg_pass_attachment_desc :: struct {
    image:     sg_image;
    mip_level: s32;
    slice:     s32; /* cube texture: face; array texture: layer; 3D texture: slice */
}
#run {
    instance: sg_pass_attachment_desc;
    assert(((cast(*void)(*instance.image)) - cast(*void)(*instance)) == 0, "sg_pass_attachment_desc.image has unexpected offset % instead of 0", ((cast(*void)(*instance.image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_attachment_desc.image)) == 4, "sg_pass_attachment_desc.image has unexpected size % instead of 4", size_of(type_of(sg_pass_attachment_desc.image)));
    assert(((cast(*void)(*instance.mip_level)) - cast(*void)(*instance)) == 4, "sg_pass_attachment_desc.mip_level has unexpected offset % instead of 4", ((cast(*void)(*instance.mip_level)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_attachment_desc.mip_level)) == 4, "sg_pass_attachment_desc.mip_level has unexpected size % instead of 4", size_of(type_of(sg_pass_attachment_desc.mip_level)));
    assert(((cast(*void)(*instance.slice)) - cast(*void)(*instance)) == 8, "sg_pass_attachment_desc.slice has unexpected offset % instead of 8", ((cast(*void)(*instance.slice)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_attachment_desc.slice)) == 4, "sg_pass_attachment_desc.slice has unexpected size % instead of 4", size_of(type_of(sg_pass_attachment_desc.slice)));
    assert(size_of(sg_pass_attachment_desc) == 12, "sg_pass_attachment_desc has size % instead of 12", size_of(sg_pass_attachment_desc));
}

sg_pass_desc :: struct {
    _start_canary:            u32;
    color_attachments:        [4] sg_pass_attachment_desc;
    depth_stencil_attachment: sg_pass_attachment_desc;
    label:                    *u8;
    _end_canary:              u32;
}
#run {
    instance: sg_pass_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_pass_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_desc._start_canary)) == 4, "sg_pass_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_pass_desc._start_canary)));
    assert(((cast(*void)(*instance.color_attachments)) - cast(*void)(*instance)) == 4, "sg_pass_desc.color_attachments has unexpected offset % instead of 4", ((cast(*void)(*instance.color_attachments)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_desc.color_attachments)) == 48, "sg_pass_desc.color_attachments has unexpected size % instead of 48", size_of(type_of(sg_pass_desc.color_attachments)));
    assert(((cast(*void)(*instance.depth_stencil_attachment)) - cast(*void)(*instance)) == 52, "sg_pass_desc.depth_stencil_attachment has unexpected offset % instead of 52", ((cast(*void)(*instance.depth_stencil_attachment)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_desc.depth_stencil_attachment)) == 12, "sg_pass_desc.depth_stencil_attachment has unexpected size % instead of 12", size_of(type_of(sg_pass_desc.depth_stencil_attachment)));
    assert(((cast(*void)(*instance.label)) - cast(*void)(*instance)) == 64, "sg_pass_desc.label has unexpected offset % instead of 64", ((cast(*void)(*instance.label)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_desc.label)) == 8, "sg_pass_desc.label has unexpected size % instead of 8", size_of(type_of(sg_pass_desc.label)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 72, "sg_pass_desc._end_canary has unexpected offset % instead of 72", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_desc._end_canary)) == 4, "sg_pass_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_pass_desc._end_canary)));
    assert(size_of(sg_pass_desc) == 80, "sg_pass_desc has size % instead of 80", size_of(sg_pass_desc));
}

/*
sg_trace_hooks

Installable callback functions to keep track of the sokol-gfx calls,
this is useful for debugging, or keeping track of resource creation
and destruction.

Trace hooks are installed with sg_install_trace_hooks(), this returns
another sg_trace_hooks struct with the previous set of
trace hook function pointers. These should be invoked by the
new trace hooks to form a proper call chain.
*/
sg_trace_hooks :: struct {
    user_data:                   *void;
    reset_state_cache:           #type (user_data: *void) -> void #c_call;
    make_buffer:                 #type (desc: *sg_buffer_desc, result: sg_buffer, user_data: *void) -> void #c_call;
    make_image:                  #type (desc: *sg_image_desc, result: sg_image, user_data: *void) -> void #c_call;
    make_shader:                 #type (desc: *sg_shader_desc, result: sg_shader, user_data: *void) -> void #c_call;
    make_pipeline:               #type (desc: *sg_pipeline_desc, result: sg_pipeline, user_data: *void) -> void #c_call;
    make_pass:                   #type (desc: *sg_pass_desc, result: sg_pass, user_data: *void) -> void #c_call;
    destroy_buffer:              #type (buf: sg_buffer, user_data: *void) -> void #c_call;
    destroy_image:               #type (img: sg_image, user_data: *void) -> void #c_call;
    destroy_shader:              #type (shd: sg_shader, user_data: *void) -> void #c_call;
    destroy_pipeline:            #type (pip: sg_pipeline, user_data: *void) -> void #c_call;
    destroy_pass:                #type (pass: sg_pass, user_data: *void) -> void #c_call;
    update_buffer:               #type (buf: sg_buffer, data: *sg_range, user_data: *void) -> void #c_call;
    update_image:                #type (img: sg_image, data: *sg_image_data, user_data: *void) -> void #c_call;
    append_buffer:               #type (buf: sg_buffer, data: *sg_range, result: s32, user_data: *void) -> void #c_call;
    begin_default_pass:          #type (pass_action: *sg_pass_action, width: s32, height: s32, user_data: *void) -> void #c_call;
    begin_pass:                  #type (pass: sg_pass, pass_action: *sg_pass_action, user_data: *void) -> void #c_call;
    apply_viewport:              #type (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool, user_data: *void) -> void #c_call;
    apply_scissor_rect:          #type (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool, user_data: *void) -> void #c_call;
    apply_pipeline:              #type (pip: sg_pipeline, user_data: *void) -> void #c_call;
    apply_bindings:              #type (bindings: *sg_bindings, user_data: *void) -> void #c_call;
    apply_uniforms:              #type (stage: sg_shader_stage, ub_index: s32, data: *sg_range, user_data: *void) -> void #c_call;
    draw:                        #type (base_element: s32, num_elements: s32, num_instances: s32, user_data: *void) -> void #c_call;
    end_pass:                    #type (user_data: *void) -> void #c_call;
    commit:                      #type (user_data: *void) -> void #c_call;
    alloc_buffer:                #type (result: sg_buffer, user_data: *void) -> void #c_call;
    alloc_image:                 #type (result: sg_image, user_data: *void) -> void #c_call;
    alloc_shader:                #type (result: sg_shader, user_data: *void) -> void #c_call;
    alloc_pipeline:              #type (result: sg_pipeline, user_data: *void) -> void #c_call;
    alloc_pass:                  #type (result: sg_pass, user_data: *void) -> void #c_call;
    dealloc_buffer:              #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    dealloc_image:               #type (img_id: sg_image, user_data: *void) -> void #c_call;
    dealloc_shader:              #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    dealloc_pipeline:            #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    dealloc_pass:                #type (pass_id: sg_pass, user_data: *void) -> void #c_call;
    init_buffer:                 #type (buf_id: sg_buffer, desc: *sg_buffer_desc, user_data: *void) -> void #c_call;
    init_image:                  #type (img_id: sg_image, desc: *sg_image_desc, user_data: *void) -> void #c_call;
    init_shader:                 #type (shd_id: sg_shader, desc: *sg_shader_desc, user_data: *void) -> void #c_call;
    init_pipeline:               #type (pip_id: sg_pipeline, desc: *sg_pipeline_desc, user_data: *void) -> void #c_call;
    init_pass:                   #type (pass_id: sg_pass, desc: *sg_pass_desc, user_data: *void) -> void #c_call;
    uninit_buffer:               #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    uninit_image:                #type (img_id: sg_image, user_data: *void) -> void #c_call;
    uninit_shader:               #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    uninit_pipeline:             #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    uninit_pass:                 #type (pass_id: sg_pass, user_data: *void) -> void #c_call;
    fail_buffer:                 #type (buf_id: sg_buffer, user_data: *void) -> void #c_call;
    fail_image:                  #type (img_id: sg_image, user_data: *void) -> void #c_call;
    fail_shader:                 #type (shd_id: sg_shader, user_data: *void) -> void #c_call;
    fail_pipeline:               #type (pip_id: sg_pipeline, user_data: *void) -> void #c_call;
    fail_pass:                   #type (pass_id: sg_pass, user_data: *void) -> void #c_call;
    push_debug_group:            #type (name: *u8, user_data: *void) -> void #c_call;
    pop_debug_group:             #type (user_data: *void) -> void #c_call;
    err_buffer_pool_exhausted:   #type (user_data: *void) -> void #c_call;
    err_image_pool_exhausted:    #type (user_data: *void) -> void #c_call;
    err_shader_pool_exhausted:   #type (user_data: *void) -> void #c_call;
    err_pipeline_pool_exhausted: #type (user_data: *void) -> void #c_call;
    err_pass_pool_exhausted:     #type (user_data: *void) -> void #c_call;
    err_context_mismatch:        #type (user_data: *void) -> void #c_call;
    err_pass_invalid:            #type (user_data: *void) -> void #c_call;
    err_draw_invalid:            #type (user_data: *void) -> void #c_call;
    err_bindings_invalid:        #type (user_data: *void) -> void #c_call;
}
#run {
    instance: sg_trace_hooks;
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 0, "sg_trace_hooks.user_data has unexpected offset % instead of 0", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.user_data)) == 8, "sg_trace_hooks.user_data has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.user_data)));
    assert(((cast(*void)(*instance.reset_state_cache)) - cast(*void)(*instance)) == 8, "sg_trace_hooks.reset_state_cache has unexpected offset % instead of 8", ((cast(*void)(*instance.reset_state_cache)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.reset_state_cache)) == 8, "sg_trace_hooks.reset_state_cache has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.reset_state_cache)));
    assert(((cast(*void)(*instance.make_buffer)) - cast(*void)(*instance)) == 16, "sg_trace_hooks.make_buffer has unexpected offset % instead of 16", ((cast(*void)(*instance.make_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.make_buffer)) == 8, "sg_trace_hooks.make_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.make_buffer)));
    assert(((cast(*void)(*instance.make_image)) - cast(*void)(*instance)) == 24, "sg_trace_hooks.make_image has unexpected offset % instead of 24", ((cast(*void)(*instance.make_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.make_image)) == 8, "sg_trace_hooks.make_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.make_image)));
    assert(((cast(*void)(*instance.make_shader)) - cast(*void)(*instance)) == 32, "sg_trace_hooks.make_shader has unexpected offset % instead of 32", ((cast(*void)(*instance.make_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.make_shader)) == 8, "sg_trace_hooks.make_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.make_shader)));
    assert(((cast(*void)(*instance.make_pipeline)) - cast(*void)(*instance)) == 40, "sg_trace_hooks.make_pipeline has unexpected offset % instead of 40", ((cast(*void)(*instance.make_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.make_pipeline)) == 8, "sg_trace_hooks.make_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.make_pipeline)));
    assert(((cast(*void)(*instance.make_pass)) - cast(*void)(*instance)) == 48, "sg_trace_hooks.make_pass has unexpected offset % instead of 48", ((cast(*void)(*instance.make_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.make_pass)) == 8, "sg_trace_hooks.make_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.make_pass)));
    assert(((cast(*void)(*instance.destroy_buffer)) - cast(*void)(*instance)) == 56, "sg_trace_hooks.destroy_buffer has unexpected offset % instead of 56", ((cast(*void)(*instance.destroy_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.destroy_buffer)) == 8, "sg_trace_hooks.destroy_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.destroy_buffer)));
    assert(((cast(*void)(*instance.destroy_image)) - cast(*void)(*instance)) == 64, "sg_trace_hooks.destroy_image has unexpected offset % instead of 64", ((cast(*void)(*instance.destroy_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.destroy_image)) == 8, "sg_trace_hooks.destroy_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.destroy_image)));
    assert(((cast(*void)(*instance.destroy_shader)) - cast(*void)(*instance)) == 72, "sg_trace_hooks.destroy_shader has unexpected offset % instead of 72", ((cast(*void)(*instance.destroy_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.destroy_shader)) == 8, "sg_trace_hooks.destroy_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.destroy_shader)));
    assert(((cast(*void)(*instance.destroy_pipeline)) - cast(*void)(*instance)) == 80, "sg_trace_hooks.destroy_pipeline has unexpected offset % instead of 80", ((cast(*void)(*instance.destroy_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.destroy_pipeline)) == 8, "sg_trace_hooks.destroy_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.destroy_pipeline)));
    assert(((cast(*void)(*instance.destroy_pass)) - cast(*void)(*instance)) == 88, "sg_trace_hooks.destroy_pass has unexpected offset % instead of 88", ((cast(*void)(*instance.destroy_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.destroy_pass)) == 8, "sg_trace_hooks.destroy_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.destroy_pass)));
    assert(((cast(*void)(*instance.update_buffer)) - cast(*void)(*instance)) == 96, "sg_trace_hooks.update_buffer has unexpected offset % instead of 96", ((cast(*void)(*instance.update_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.update_buffer)) == 8, "sg_trace_hooks.update_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.update_buffer)));
    assert(((cast(*void)(*instance.update_image)) - cast(*void)(*instance)) == 104, "sg_trace_hooks.update_image has unexpected offset % instead of 104", ((cast(*void)(*instance.update_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.update_image)) == 8, "sg_trace_hooks.update_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.update_image)));
    assert(((cast(*void)(*instance.append_buffer)) - cast(*void)(*instance)) == 112, "sg_trace_hooks.append_buffer has unexpected offset % instead of 112", ((cast(*void)(*instance.append_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.append_buffer)) == 8, "sg_trace_hooks.append_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.append_buffer)));
    assert(((cast(*void)(*instance.begin_default_pass)) - cast(*void)(*instance)) == 120, "sg_trace_hooks.begin_default_pass has unexpected offset % instead of 120", ((cast(*void)(*instance.begin_default_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.begin_default_pass)) == 8, "sg_trace_hooks.begin_default_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.begin_default_pass)));
    assert(((cast(*void)(*instance.begin_pass)) - cast(*void)(*instance)) == 128, "sg_trace_hooks.begin_pass has unexpected offset % instead of 128", ((cast(*void)(*instance.begin_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.begin_pass)) == 8, "sg_trace_hooks.begin_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.begin_pass)));
    assert(((cast(*void)(*instance.apply_viewport)) - cast(*void)(*instance)) == 136, "sg_trace_hooks.apply_viewport has unexpected offset % instead of 136", ((cast(*void)(*instance.apply_viewport)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.apply_viewport)) == 8, "sg_trace_hooks.apply_viewport has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.apply_viewport)));
    assert(((cast(*void)(*instance.apply_scissor_rect)) - cast(*void)(*instance)) == 144, "sg_trace_hooks.apply_scissor_rect has unexpected offset % instead of 144", ((cast(*void)(*instance.apply_scissor_rect)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.apply_scissor_rect)) == 8, "sg_trace_hooks.apply_scissor_rect has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.apply_scissor_rect)));
    assert(((cast(*void)(*instance.apply_pipeline)) - cast(*void)(*instance)) == 152, "sg_trace_hooks.apply_pipeline has unexpected offset % instead of 152", ((cast(*void)(*instance.apply_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.apply_pipeline)) == 8, "sg_trace_hooks.apply_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.apply_pipeline)));
    assert(((cast(*void)(*instance.apply_bindings)) - cast(*void)(*instance)) == 160, "sg_trace_hooks.apply_bindings has unexpected offset % instead of 160", ((cast(*void)(*instance.apply_bindings)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.apply_bindings)) == 8, "sg_trace_hooks.apply_bindings has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.apply_bindings)));
    assert(((cast(*void)(*instance.apply_uniforms)) - cast(*void)(*instance)) == 168, "sg_trace_hooks.apply_uniforms has unexpected offset % instead of 168", ((cast(*void)(*instance.apply_uniforms)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.apply_uniforms)) == 8, "sg_trace_hooks.apply_uniforms has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.apply_uniforms)));
    assert(((cast(*void)(*instance.draw)) - cast(*void)(*instance)) == 176, "sg_trace_hooks.draw has unexpected offset % instead of 176", ((cast(*void)(*instance.draw)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.draw)) == 8, "sg_trace_hooks.draw has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.draw)));
    assert(((cast(*void)(*instance.end_pass)) - cast(*void)(*instance)) == 184, "sg_trace_hooks.end_pass has unexpected offset % instead of 184", ((cast(*void)(*instance.end_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.end_pass)) == 8, "sg_trace_hooks.end_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.end_pass)));
    assert(((cast(*void)(*instance.commit)) - cast(*void)(*instance)) == 192, "sg_trace_hooks.commit has unexpected offset % instead of 192", ((cast(*void)(*instance.commit)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.commit)) == 8, "sg_trace_hooks.commit has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.commit)));
    assert(((cast(*void)(*instance.alloc_buffer)) - cast(*void)(*instance)) == 200, "sg_trace_hooks.alloc_buffer has unexpected offset % instead of 200", ((cast(*void)(*instance.alloc_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.alloc_buffer)) == 8, "sg_trace_hooks.alloc_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.alloc_buffer)));
    assert(((cast(*void)(*instance.alloc_image)) - cast(*void)(*instance)) == 208, "sg_trace_hooks.alloc_image has unexpected offset % instead of 208", ((cast(*void)(*instance.alloc_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.alloc_image)) == 8, "sg_trace_hooks.alloc_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.alloc_image)));
    assert(((cast(*void)(*instance.alloc_shader)) - cast(*void)(*instance)) == 216, "sg_trace_hooks.alloc_shader has unexpected offset % instead of 216", ((cast(*void)(*instance.alloc_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.alloc_shader)) == 8, "sg_trace_hooks.alloc_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.alloc_shader)));
    assert(((cast(*void)(*instance.alloc_pipeline)) - cast(*void)(*instance)) == 224, "sg_trace_hooks.alloc_pipeline has unexpected offset % instead of 224", ((cast(*void)(*instance.alloc_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.alloc_pipeline)) == 8, "sg_trace_hooks.alloc_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.alloc_pipeline)));
    assert(((cast(*void)(*instance.alloc_pass)) - cast(*void)(*instance)) == 232, "sg_trace_hooks.alloc_pass has unexpected offset % instead of 232", ((cast(*void)(*instance.alloc_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.alloc_pass)) == 8, "sg_trace_hooks.alloc_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.alloc_pass)));
    assert(((cast(*void)(*instance.dealloc_buffer)) - cast(*void)(*instance)) == 240, "sg_trace_hooks.dealloc_buffer has unexpected offset % instead of 240", ((cast(*void)(*instance.dealloc_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.dealloc_buffer)) == 8, "sg_trace_hooks.dealloc_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.dealloc_buffer)));
    assert(((cast(*void)(*instance.dealloc_image)) - cast(*void)(*instance)) == 248, "sg_trace_hooks.dealloc_image has unexpected offset % instead of 248", ((cast(*void)(*instance.dealloc_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.dealloc_image)) == 8, "sg_trace_hooks.dealloc_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.dealloc_image)));
    assert(((cast(*void)(*instance.dealloc_shader)) - cast(*void)(*instance)) == 256, "sg_trace_hooks.dealloc_shader has unexpected offset % instead of 256", ((cast(*void)(*instance.dealloc_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.dealloc_shader)) == 8, "sg_trace_hooks.dealloc_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.dealloc_shader)));
    assert(((cast(*void)(*instance.dealloc_pipeline)) - cast(*void)(*instance)) == 264, "sg_trace_hooks.dealloc_pipeline has unexpected offset % instead of 264", ((cast(*void)(*instance.dealloc_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.dealloc_pipeline)) == 8, "sg_trace_hooks.dealloc_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.dealloc_pipeline)));
    assert(((cast(*void)(*instance.dealloc_pass)) - cast(*void)(*instance)) == 272, "sg_trace_hooks.dealloc_pass has unexpected offset % instead of 272", ((cast(*void)(*instance.dealloc_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.dealloc_pass)) == 8, "sg_trace_hooks.dealloc_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.dealloc_pass)));
    assert(((cast(*void)(*instance.init_buffer)) - cast(*void)(*instance)) == 280, "sg_trace_hooks.init_buffer has unexpected offset % instead of 280", ((cast(*void)(*instance.init_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.init_buffer)) == 8, "sg_trace_hooks.init_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.init_buffer)));
    assert(((cast(*void)(*instance.init_image)) - cast(*void)(*instance)) == 288, "sg_trace_hooks.init_image has unexpected offset % instead of 288", ((cast(*void)(*instance.init_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.init_image)) == 8, "sg_trace_hooks.init_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.init_image)));
    assert(((cast(*void)(*instance.init_shader)) - cast(*void)(*instance)) == 296, "sg_trace_hooks.init_shader has unexpected offset % instead of 296", ((cast(*void)(*instance.init_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.init_shader)) == 8, "sg_trace_hooks.init_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.init_shader)));
    assert(((cast(*void)(*instance.init_pipeline)) - cast(*void)(*instance)) == 304, "sg_trace_hooks.init_pipeline has unexpected offset % instead of 304", ((cast(*void)(*instance.init_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.init_pipeline)) == 8, "sg_trace_hooks.init_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.init_pipeline)));
    assert(((cast(*void)(*instance.init_pass)) - cast(*void)(*instance)) == 312, "sg_trace_hooks.init_pass has unexpected offset % instead of 312", ((cast(*void)(*instance.init_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.init_pass)) == 8, "sg_trace_hooks.init_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.init_pass)));
    assert(((cast(*void)(*instance.uninit_buffer)) - cast(*void)(*instance)) == 320, "sg_trace_hooks.uninit_buffer has unexpected offset % instead of 320", ((cast(*void)(*instance.uninit_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.uninit_buffer)) == 8, "sg_trace_hooks.uninit_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.uninit_buffer)));
    assert(((cast(*void)(*instance.uninit_image)) - cast(*void)(*instance)) == 328, "sg_trace_hooks.uninit_image has unexpected offset % instead of 328", ((cast(*void)(*instance.uninit_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.uninit_image)) == 8, "sg_trace_hooks.uninit_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.uninit_image)));
    assert(((cast(*void)(*instance.uninit_shader)) - cast(*void)(*instance)) == 336, "sg_trace_hooks.uninit_shader has unexpected offset % instead of 336", ((cast(*void)(*instance.uninit_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.uninit_shader)) == 8, "sg_trace_hooks.uninit_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.uninit_shader)));
    assert(((cast(*void)(*instance.uninit_pipeline)) - cast(*void)(*instance)) == 344, "sg_trace_hooks.uninit_pipeline has unexpected offset % instead of 344", ((cast(*void)(*instance.uninit_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.uninit_pipeline)) == 8, "sg_trace_hooks.uninit_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.uninit_pipeline)));
    assert(((cast(*void)(*instance.uninit_pass)) - cast(*void)(*instance)) == 352, "sg_trace_hooks.uninit_pass has unexpected offset % instead of 352", ((cast(*void)(*instance.uninit_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.uninit_pass)) == 8, "sg_trace_hooks.uninit_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.uninit_pass)));
    assert(((cast(*void)(*instance.fail_buffer)) - cast(*void)(*instance)) == 360, "sg_trace_hooks.fail_buffer has unexpected offset % instead of 360", ((cast(*void)(*instance.fail_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.fail_buffer)) == 8, "sg_trace_hooks.fail_buffer has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.fail_buffer)));
    assert(((cast(*void)(*instance.fail_image)) - cast(*void)(*instance)) == 368, "sg_trace_hooks.fail_image has unexpected offset % instead of 368", ((cast(*void)(*instance.fail_image)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.fail_image)) == 8, "sg_trace_hooks.fail_image has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.fail_image)));
    assert(((cast(*void)(*instance.fail_shader)) - cast(*void)(*instance)) == 376, "sg_trace_hooks.fail_shader has unexpected offset % instead of 376", ((cast(*void)(*instance.fail_shader)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.fail_shader)) == 8, "sg_trace_hooks.fail_shader has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.fail_shader)));
    assert(((cast(*void)(*instance.fail_pipeline)) - cast(*void)(*instance)) == 384, "sg_trace_hooks.fail_pipeline has unexpected offset % instead of 384", ((cast(*void)(*instance.fail_pipeline)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.fail_pipeline)) == 8, "sg_trace_hooks.fail_pipeline has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.fail_pipeline)));
    assert(((cast(*void)(*instance.fail_pass)) - cast(*void)(*instance)) == 392, "sg_trace_hooks.fail_pass has unexpected offset % instead of 392", ((cast(*void)(*instance.fail_pass)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.fail_pass)) == 8, "sg_trace_hooks.fail_pass has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.fail_pass)));
    assert(((cast(*void)(*instance.push_debug_group)) - cast(*void)(*instance)) == 400, "sg_trace_hooks.push_debug_group has unexpected offset % instead of 400", ((cast(*void)(*instance.push_debug_group)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.push_debug_group)) == 8, "sg_trace_hooks.push_debug_group has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.push_debug_group)));
    assert(((cast(*void)(*instance.pop_debug_group)) - cast(*void)(*instance)) == 408, "sg_trace_hooks.pop_debug_group has unexpected offset % instead of 408", ((cast(*void)(*instance.pop_debug_group)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.pop_debug_group)) == 8, "sg_trace_hooks.pop_debug_group has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.pop_debug_group)));
    assert(((cast(*void)(*instance.err_buffer_pool_exhausted)) - cast(*void)(*instance)) == 416, "sg_trace_hooks.err_buffer_pool_exhausted has unexpected offset % instead of 416", ((cast(*void)(*instance.err_buffer_pool_exhausted)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_buffer_pool_exhausted)) == 8, "sg_trace_hooks.err_buffer_pool_exhausted has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_buffer_pool_exhausted)));
    assert(((cast(*void)(*instance.err_image_pool_exhausted)) - cast(*void)(*instance)) == 424, "sg_trace_hooks.err_image_pool_exhausted has unexpected offset % instead of 424", ((cast(*void)(*instance.err_image_pool_exhausted)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_image_pool_exhausted)) == 8, "sg_trace_hooks.err_image_pool_exhausted has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_image_pool_exhausted)));
    assert(((cast(*void)(*instance.err_shader_pool_exhausted)) - cast(*void)(*instance)) == 432, "sg_trace_hooks.err_shader_pool_exhausted has unexpected offset % instead of 432", ((cast(*void)(*instance.err_shader_pool_exhausted)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_shader_pool_exhausted)) == 8, "sg_trace_hooks.err_shader_pool_exhausted has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_shader_pool_exhausted)));
    assert(((cast(*void)(*instance.err_pipeline_pool_exhausted)) - cast(*void)(*instance)) == 440, "sg_trace_hooks.err_pipeline_pool_exhausted has unexpected offset % instead of 440", ((cast(*void)(*instance.err_pipeline_pool_exhausted)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_pipeline_pool_exhausted)) == 8, "sg_trace_hooks.err_pipeline_pool_exhausted has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_pipeline_pool_exhausted)));
    assert(((cast(*void)(*instance.err_pass_pool_exhausted)) - cast(*void)(*instance)) == 448, "sg_trace_hooks.err_pass_pool_exhausted has unexpected offset % instead of 448", ((cast(*void)(*instance.err_pass_pool_exhausted)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_pass_pool_exhausted)) == 8, "sg_trace_hooks.err_pass_pool_exhausted has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_pass_pool_exhausted)));
    assert(((cast(*void)(*instance.err_context_mismatch)) - cast(*void)(*instance)) == 456, "sg_trace_hooks.err_context_mismatch has unexpected offset % instead of 456", ((cast(*void)(*instance.err_context_mismatch)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_context_mismatch)) == 8, "sg_trace_hooks.err_context_mismatch has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_context_mismatch)));
    assert(((cast(*void)(*instance.err_pass_invalid)) - cast(*void)(*instance)) == 464, "sg_trace_hooks.err_pass_invalid has unexpected offset % instead of 464", ((cast(*void)(*instance.err_pass_invalid)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_pass_invalid)) == 8, "sg_trace_hooks.err_pass_invalid has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_pass_invalid)));
    assert(((cast(*void)(*instance.err_draw_invalid)) - cast(*void)(*instance)) == 472, "sg_trace_hooks.err_draw_invalid has unexpected offset % instead of 472", ((cast(*void)(*instance.err_draw_invalid)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_draw_invalid)) == 8, "sg_trace_hooks.err_draw_invalid has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_draw_invalid)));
    assert(((cast(*void)(*instance.err_bindings_invalid)) - cast(*void)(*instance)) == 480, "sg_trace_hooks.err_bindings_invalid has unexpected offset % instead of 480", ((cast(*void)(*instance.err_bindings_invalid)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_trace_hooks.err_bindings_invalid)) == 8, "sg_trace_hooks.err_bindings_invalid has unexpected size % instead of 8", size_of(type_of(sg_trace_hooks.err_bindings_invalid)));
    assert(size_of(sg_trace_hooks) == 488, "sg_trace_hooks has size % instead of 488", size_of(sg_trace_hooks));
}

/*
sg_buffer_info
sg_image_info
sg_shader_info
sg_pipeline_info
sg_pass_info

These structs contain various internal resource attributes which
might be useful for debug-inspection. Please don't rely on the
actual content of those structs too much, as they are quite closely
tied to sokol_gfx.h internals and may change more frequently than
the other public API elements.

The *_info structs are used as the return values of the following functions:

sg_query_buffer_info()
sg_query_image_info()
sg_query_shader_info()
sg_query_pipeline_info()
sg_query_pass_info()
*/
sg_slot_info :: struct {
    state:  sg_resource_state; /* the current state of this resource slot */
    res_id: u32; /* type-neutral resource if (e.g. sg_buffer.id) */
    ctx_id: u32; /* the context this resource belongs to */
}
#run {
    instance: sg_slot_info;
    assert(((cast(*void)(*instance.state)) - cast(*void)(*instance)) == 0, "sg_slot_info.state has unexpected offset % instead of 0", ((cast(*void)(*instance.state)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_slot_info.state)) == 4, "sg_slot_info.state has unexpected size % instead of 4", size_of(type_of(sg_slot_info.state)));
    assert(((cast(*void)(*instance.res_id)) - cast(*void)(*instance)) == 4, "sg_slot_info.res_id has unexpected offset % instead of 4", ((cast(*void)(*instance.res_id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_slot_info.res_id)) == 4, "sg_slot_info.res_id has unexpected size % instead of 4", size_of(type_of(sg_slot_info.res_id)));
    assert(((cast(*void)(*instance.ctx_id)) - cast(*void)(*instance)) == 8, "sg_slot_info.ctx_id has unexpected offset % instead of 8", ((cast(*void)(*instance.ctx_id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_slot_info.ctx_id)) == 4, "sg_slot_info.ctx_id has unexpected size % instead of 4", size_of(type_of(sg_slot_info.ctx_id)));
    assert(size_of(sg_slot_info) == 12, "sg_slot_info has size % instead of 12", size_of(sg_slot_info));
}

sg_buffer_info :: struct {
    slot:               sg_slot_info; /* resource pool slot info */
    update_frame_index: u32; /* frame index of last sg_update_buffer() */
    append_frame_index: u32; /* frame index of last sg_append_buffer() */
    append_pos:         s32; /* current position in buffer for sg_append_buffer() */
    append_overflow:    bool; /* is buffer in overflow state (due to sg_append_buffer) */
    num_slots:          s32; /* number of renaming-slots for dynamically updated buffers */
    active_slot:        s32; /* currently active write-slot for dynamically updated buffers */
}
#run {
    instance: sg_buffer_info;
    assert(((cast(*void)(*instance.slot)) - cast(*void)(*instance)) == 0, "sg_buffer_info.slot has unexpected offset % instead of 0", ((cast(*void)(*instance.slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.slot)) == 12, "sg_buffer_info.slot has unexpected size % instead of 12", size_of(type_of(sg_buffer_info.slot)));
    assert(((cast(*void)(*instance.update_frame_index)) - cast(*void)(*instance)) == 12, "sg_buffer_info.update_frame_index has unexpected offset % instead of 12", ((cast(*void)(*instance.update_frame_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.update_frame_index)) == 4, "sg_buffer_info.update_frame_index has unexpected size % instead of 4", size_of(type_of(sg_buffer_info.update_frame_index)));
    assert(((cast(*void)(*instance.append_frame_index)) - cast(*void)(*instance)) == 16, "sg_buffer_info.append_frame_index has unexpected offset % instead of 16", ((cast(*void)(*instance.append_frame_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.append_frame_index)) == 4, "sg_buffer_info.append_frame_index has unexpected size % instead of 4", size_of(type_of(sg_buffer_info.append_frame_index)));
    assert(((cast(*void)(*instance.append_pos)) - cast(*void)(*instance)) == 20, "sg_buffer_info.append_pos has unexpected offset % instead of 20", ((cast(*void)(*instance.append_pos)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.append_pos)) == 4, "sg_buffer_info.append_pos has unexpected size % instead of 4", size_of(type_of(sg_buffer_info.append_pos)));
    assert(((cast(*void)(*instance.append_overflow)) - cast(*void)(*instance)) == 24, "sg_buffer_info.append_overflow has unexpected offset % instead of 24", ((cast(*void)(*instance.append_overflow)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.append_overflow)) == 1, "sg_buffer_info.append_overflow has unexpected size % instead of 1", size_of(type_of(sg_buffer_info.append_overflow)));
    assert(((cast(*void)(*instance.num_slots)) - cast(*void)(*instance)) == 28, "sg_buffer_info.num_slots has unexpected offset % instead of 28", ((cast(*void)(*instance.num_slots)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.num_slots)) == 4, "sg_buffer_info.num_slots has unexpected size % instead of 4", size_of(type_of(sg_buffer_info.num_slots)));
    assert(((cast(*void)(*instance.active_slot)) - cast(*void)(*instance)) == 32, "sg_buffer_info.active_slot has unexpected offset % instead of 32", ((cast(*void)(*instance.active_slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_buffer_info.active_slot)) == 4, "sg_buffer_info.active_slot has unexpected size % instead of 4", size_of(type_of(sg_buffer_info.active_slot)));
    assert(size_of(sg_buffer_info) == 36, "sg_buffer_info has size % instead of 36", size_of(sg_buffer_info));
}

sg_image_info :: struct {
    slot:            sg_slot_info; /* resource pool slot info */
    upd_frame_index: u32; /* frame index of last sg_update_image() */
    num_slots:       s32; /* number of renaming-slots for dynamically updated images */
    active_slot:     s32; /* currently active write-slot for dynamically updated images */
    width:           s32; /* image width */
    height:          s32; /* image height */
}
#run {
    instance: sg_image_info;
    assert(((cast(*void)(*instance.slot)) - cast(*void)(*instance)) == 0, "sg_image_info.slot has unexpected offset % instead of 0", ((cast(*void)(*instance.slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.slot)) == 12, "sg_image_info.slot has unexpected size % instead of 12", size_of(type_of(sg_image_info.slot)));
    assert(((cast(*void)(*instance.upd_frame_index)) - cast(*void)(*instance)) == 12, "sg_image_info.upd_frame_index has unexpected offset % instead of 12", ((cast(*void)(*instance.upd_frame_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.upd_frame_index)) == 4, "sg_image_info.upd_frame_index has unexpected size % instead of 4", size_of(type_of(sg_image_info.upd_frame_index)));
    assert(((cast(*void)(*instance.num_slots)) - cast(*void)(*instance)) == 16, "sg_image_info.num_slots has unexpected offset % instead of 16", ((cast(*void)(*instance.num_slots)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.num_slots)) == 4, "sg_image_info.num_slots has unexpected size % instead of 4", size_of(type_of(sg_image_info.num_slots)));
    assert(((cast(*void)(*instance.active_slot)) - cast(*void)(*instance)) == 20, "sg_image_info.active_slot has unexpected offset % instead of 20", ((cast(*void)(*instance.active_slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.active_slot)) == 4, "sg_image_info.active_slot has unexpected size % instead of 4", size_of(type_of(sg_image_info.active_slot)));
    assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 24, "sg_image_info.width has unexpected offset % instead of 24", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.width)) == 4, "sg_image_info.width has unexpected size % instead of 4", size_of(type_of(sg_image_info.width)));
    assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 28, "sg_image_info.height has unexpected offset % instead of 28", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_image_info.height)) == 4, "sg_image_info.height has unexpected size % instead of 4", size_of(type_of(sg_image_info.height)));
    assert(size_of(sg_image_info) == 32, "sg_image_info has size % instead of 32", size_of(sg_image_info));
}

sg_shader_info :: struct {
    slot: sg_slot_info; /* resoure pool slot info */
}
#run {
    instance: sg_shader_info;
    assert(((cast(*void)(*instance.slot)) - cast(*void)(*instance)) == 0, "sg_shader_info.slot has unexpected offset % instead of 0", ((cast(*void)(*instance.slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_shader_info.slot)) == 12, "sg_shader_info.slot has unexpected size % instead of 12", size_of(type_of(sg_shader_info.slot)));
    assert(size_of(sg_shader_info) == 12, "sg_shader_info has size % instead of 12", size_of(sg_shader_info));
}

sg_pipeline_info :: struct {
    slot: sg_slot_info; /* resource pool slot info */
}
#run {
    instance: sg_pipeline_info;
    assert(((cast(*void)(*instance.slot)) - cast(*void)(*instance)) == 0, "sg_pipeline_info.slot has unexpected offset % instead of 0", ((cast(*void)(*instance.slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pipeline_info.slot)) == 12, "sg_pipeline_info.slot has unexpected size % instead of 12", size_of(type_of(sg_pipeline_info.slot)));
    assert(size_of(sg_pipeline_info) == 12, "sg_pipeline_info has size % instead of 12", size_of(sg_pipeline_info));
}

sg_pass_info :: struct {
    slot: sg_slot_info; /* resource pool slot info */
}
#run {
    instance: sg_pass_info;
    assert(((cast(*void)(*instance.slot)) - cast(*void)(*instance)) == 0, "sg_pass_info.slot has unexpected offset % instead of 0", ((cast(*void)(*instance.slot)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_pass_info.slot)) == 12, "sg_pass_info.slot has unexpected size % instead of 12", size_of(type_of(sg_pass_info.slot)));
    assert(size_of(sg_pass_info) == 12, "sg_pass_info has size % instead of 12", size_of(sg_pass_info));
}

/*
sg_desc

The sg_desc struct contains configuration values for sokol_gfx,
it is used as parameter to the sg_setup() call.

NOTE that all callback function pointers come in two versions, one without
a userdata pointer, and one with a userdata pointer. You would
either initialize one or the other depending on whether you pass data
to your callbacks.

FIXME: explain the various configuration options

The default configuration is:

.buffer_pool_size       128
.image_pool_size        128
.shader_pool_size       32
.pipeline_pool_size     64
.pass_pool_size         16
.context_pool_size      16
.sampler_cache_size     64
.uniform_buffer_size    4 MB (4*1024*1024)
.staging_buffer_size    8 MB (8*1024*1024)

.context.color_format: default value depends on selected backend:
all GL backends:    SG_PIXELFORMAT_RGBA8
Metal and D3D11:    SG_PIXELFORMAT_BGRA8
WGPU:               *no default* (must be queried from WGPU swapchain)
.context.depth_format   SG_PIXELFORMAT_DEPTH_STENCIL
.context.sample_count   1

GL specific:
.context.gl.force_gles2
if this is true the GL backend will act in "GLES2 fallback mode" even
when compiled with SOKOL_GLES3, this is useful to fall back
to traditional WebGL if a browser doesn't support a WebGL2 context

Metal specific:
(NOTE: All Objective-C object references are transferred through
a bridged (const void*) to sokol_gfx, which will use a unretained
bridged cast (__bridged id<xxx>) to retrieve the Objective-C
references back. Since the bridge cast is unretained, the caller
must hold a strong reference to the Objective-C object for the
duration of the sokol_gfx call!

.context.metal.device
a pointer to the MTLDevice object
.context.metal.renderpass_descriptor_cb
.context.metal_renderpass_descriptor_userdata_cb
A C callback function to obtain the MTLRenderPassDescriptor for the
current frame when rendering to the default framebuffer, will be called
in sg_begin_default_pass().
.context.metal.drawable_cb
.context.metal.drawable_userdata_cb
a C callback function to obtain a MTLDrawable for the current
frame when rendering to the default framebuffer, will be called in
sg_end_pass() of the default pass
.context.metal.user_data
optional user data pointer passed to the userdata versions of
callback functions

D3D11 specific:
.context.d3d11.device
a pointer to the ID3D11Device object, this must have been created
before sg_setup() is called
.context.d3d11.device_context
a pointer to the ID3D11DeviceContext object
.context.d3d11.render_target_view_cb
.context.d3d11.render_target_view_userdata_cb
a C callback function to obtain a pointer to the current
ID3D11RenderTargetView object of the default framebuffer,
this function will be called in sg_begin_pass() when rendering
to the default framebuffer
.context.d3d11.depth_stencil_view_cb
.context.d3d11.depth_stencil_view_userdata_cb
a C callback function to obtain a pointer to the current
ID3D11DepthStencilView object of the default framebuffer,
this function will be called in sg_begin_pass() when rendering
to the default framebuffer
.context.metal.user_data
optional user data pointer passed to the userdata versions of
callback functions

WebGPU specific:
.context.wgpu.device
a WGPUDevice handle
.context.wgpu.render_format
WGPUTextureFormat of the swap chain surface
.context.wgpu.render_view_cb
.context.wgpu.render_view_userdata_cb
callback to get the current WGPUTextureView of the swapchain's
rendering attachment (may be an MSAA surface)
.context.wgpu.resolve_view_cb
.context.wgpu.resolve_view_userdata_cb
callback to get the current WGPUTextureView of the swapchain's
MSAA-resolve-target surface, must return 0 if not MSAA rendering
.context.wgpu.depth_stencil_view_cb
.context.wgpu.depth_stencil_view_userdata_cb
callback to get current default-pass depth-stencil-surface WGPUTextureView
the pixel format of the default WGPUTextureView must be WGPUTextureFormat_Depth24Plus8
.context.metal.user_data
optional user data pointer passed to the userdata versions of
callback functions

When using sokol_gfx.h and sokol_app.h together, consider using the
helper function sapp_sgcontext() in the sokol_glue.h header to
initialize the sg_desc.context nested struct. sapp_sgcontext() returns
a completely initialized sg_context_desc struct with information
provided by sokol_app.h.
*/
sg_gl_context_desc :: struct {
    force_gles2: bool;
}
#run {
    instance: sg_gl_context_desc;
    assert(((cast(*void)(*instance.force_gles2)) - cast(*void)(*instance)) == 0, "sg_gl_context_desc.force_gles2 has unexpected offset % instead of 0", ((cast(*void)(*instance.force_gles2)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_gl_context_desc.force_gles2)) == 1, "sg_gl_context_desc.force_gles2 has unexpected size % instead of 1", size_of(type_of(sg_gl_context_desc.force_gles2)));
    assert(size_of(sg_gl_context_desc) == 1, "sg_gl_context_desc has size % instead of 1", size_of(sg_gl_context_desc));
}

sg_metal_context_desc :: struct {
    device:                            *void;
    renderpass_descriptor_cb:          #type () -> *void #c_call;
    renderpass_descriptor_userdata_cb: #type (unknown0: *void) -> *void #c_call;
    drawable_cb:                       #type () -> *void #c_call;
    drawable_userdata_cb:              #type (unknown0: *void) -> *void #c_call;
    user_data:                         *void;
}
#run {
    instance: sg_metal_context_desc;
    assert(((cast(*void)(*instance.device)) - cast(*void)(*instance)) == 0, "sg_metal_context_desc.device has unexpected offset % instead of 0", ((cast(*void)(*instance.device)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.device)) == 8, "sg_metal_context_desc.device has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.device)));
    assert(((cast(*void)(*instance.renderpass_descriptor_cb)) - cast(*void)(*instance)) == 8, "sg_metal_context_desc.renderpass_descriptor_cb has unexpected offset % instead of 8", ((cast(*void)(*instance.renderpass_descriptor_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.renderpass_descriptor_cb)) == 8, "sg_metal_context_desc.renderpass_descriptor_cb has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.renderpass_descriptor_cb)));
    assert(((cast(*void)(*instance.renderpass_descriptor_userdata_cb)) - cast(*void)(*instance)) == 16, "sg_metal_context_desc.renderpass_descriptor_userdata_cb has unexpected offset % instead of 16", ((cast(*void)(*instance.renderpass_descriptor_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.renderpass_descriptor_userdata_cb)) == 8, "sg_metal_context_desc.renderpass_descriptor_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.renderpass_descriptor_userdata_cb)));
    assert(((cast(*void)(*instance.drawable_cb)) - cast(*void)(*instance)) == 24, "sg_metal_context_desc.drawable_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.drawable_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.drawable_cb)) == 8, "sg_metal_context_desc.drawable_cb has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.drawable_cb)));
    assert(((cast(*void)(*instance.drawable_userdata_cb)) - cast(*void)(*instance)) == 32, "sg_metal_context_desc.drawable_userdata_cb has unexpected offset % instead of 32", ((cast(*void)(*instance.drawable_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.drawable_userdata_cb)) == 8, "sg_metal_context_desc.drawable_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.drawable_userdata_cb)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 40, "sg_metal_context_desc.user_data has unexpected offset % instead of 40", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_metal_context_desc.user_data)) == 8, "sg_metal_context_desc.user_data has unexpected size % instead of 8", size_of(type_of(sg_metal_context_desc.user_data)));
    assert(size_of(sg_metal_context_desc) == 48, "sg_metal_context_desc has size % instead of 48", size_of(sg_metal_context_desc));
}

sg_d3d11_context_desc :: struct {
    device:                         *void;
    device_context:                 *void;
    render_target_view_cb:          #type () -> *void #c_call;
    render_target_view_userdata_cb: #type (unknown0: *void) -> *void #c_call;
    depth_stencil_view_cb:          #type () -> *void #c_call;
    depth_stencil_view_userdata_cb: #type (unknown0: *void) -> *void #c_call;
    user_data:                      *void;
}
#run {
    instance: sg_d3d11_context_desc;
    assert(((cast(*void)(*instance.device)) - cast(*void)(*instance)) == 0, "sg_d3d11_context_desc.device has unexpected offset % instead of 0", ((cast(*void)(*instance.device)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.device)) == 8, "sg_d3d11_context_desc.device has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.device)));
    assert(((cast(*void)(*instance.device_context)) - cast(*void)(*instance)) == 8, "sg_d3d11_context_desc.device_context has unexpected offset % instead of 8", ((cast(*void)(*instance.device_context)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.device_context)) == 8, "sg_d3d11_context_desc.device_context has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.device_context)));
    assert(((cast(*void)(*instance.render_target_view_cb)) - cast(*void)(*instance)) == 16, "sg_d3d11_context_desc.render_target_view_cb has unexpected offset % instead of 16", ((cast(*void)(*instance.render_target_view_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.render_target_view_cb)) == 8, "sg_d3d11_context_desc.render_target_view_cb has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.render_target_view_cb)));
    assert(((cast(*void)(*instance.render_target_view_userdata_cb)) - cast(*void)(*instance)) == 24, "sg_d3d11_context_desc.render_target_view_userdata_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.render_target_view_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.render_target_view_userdata_cb)) == 8, "sg_d3d11_context_desc.render_target_view_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.render_target_view_userdata_cb)));
    assert(((cast(*void)(*instance.depth_stencil_view_cb)) - cast(*void)(*instance)) == 32, "sg_d3d11_context_desc.depth_stencil_view_cb has unexpected offset % instead of 32", ((cast(*void)(*instance.depth_stencil_view_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.depth_stencil_view_cb)) == 8, "sg_d3d11_context_desc.depth_stencil_view_cb has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.depth_stencil_view_cb)));
    assert(((cast(*void)(*instance.depth_stencil_view_userdata_cb)) - cast(*void)(*instance)) == 40, "sg_d3d11_context_desc.depth_stencil_view_userdata_cb has unexpected offset % instead of 40", ((cast(*void)(*instance.depth_stencil_view_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.depth_stencil_view_userdata_cb)) == 8, "sg_d3d11_context_desc.depth_stencil_view_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.depth_stencil_view_userdata_cb)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 48, "sg_d3d11_context_desc.user_data has unexpected offset % instead of 48", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_d3d11_context_desc.user_data)) == 8, "sg_d3d11_context_desc.user_data has unexpected size % instead of 8", size_of(type_of(sg_d3d11_context_desc.user_data)));
    assert(size_of(sg_d3d11_context_desc) == 56, "sg_d3d11_context_desc has size % instead of 56", size_of(sg_d3d11_context_desc));
}

sg_wgpu_context_desc :: struct {
    device:                         *void; /* WGPUDevice */
    render_view_cb:                 #type () -> *void #c_call; /* returns WGPUTextureView */
    render_view_userdata_cb:        #type (unknown0: *void) -> *void #c_call;
    resolve_view_cb:                #type () -> *void #c_call; /* returns WGPUTextureView */
    resolve_view_userdata_cb:       #type (unknown0: *void) -> *void #c_call;
    depth_stencil_view_cb:          #type () -> *void #c_call; /* returns WGPUTextureView, must be WGPUTextureFormat_Depth24Plus8 */
    depth_stencil_view_userdata_cb: #type (unknown0: *void) -> *void #c_call;
    user_data:                      *void;
}
#run {
    instance: sg_wgpu_context_desc;
    assert(((cast(*void)(*instance.device)) - cast(*void)(*instance)) == 0, "sg_wgpu_context_desc.device has unexpected offset % instead of 0", ((cast(*void)(*instance.device)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.device)) == 8, "sg_wgpu_context_desc.device has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.device)));
    assert(((cast(*void)(*instance.render_view_cb)) - cast(*void)(*instance)) == 8, "sg_wgpu_context_desc.render_view_cb has unexpected offset % instead of 8", ((cast(*void)(*instance.render_view_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.render_view_cb)) == 8, "sg_wgpu_context_desc.render_view_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.render_view_cb)));
    assert(((cast(*void)(*instance.render_view_userdata_cb)) - cast(*void)(*instance)) == 16, "sg_wgpu_context_desc.render_view_userdata_cb has unexpected offset % instead of 16", ((cast(*void)(*instance.render_view_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.render_view_userdata_cb)) == 8, "sg_wgpu_context_desc.render_view_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.render_view_userdata_cb)));
    assert(((cast(*void)(*instance.resolve_view_cb)) - cast(*void)(*instance)) == 24, "sg_wgpu_context_desc.resolve_view_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.resolve_view_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.resolve_view_cb)) == 8, "sg_wgpu_context_desc.resolve_view_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.resolve_view_cb)));
    assert(((cast(*void)(*instance.resolve_view_userdata_cb)) - cast(*void)(*instance)) == 32, "sg_wgpu_context_desc.resolve_view_userdata_cb has unexpected offset % instead of 32", ((cast(*void)(*instance.resolve_view_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.resolve_view_userdata_cb)) == 8, "sg_wgpu_context_desc.resolve_view_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.resolve_view_userdata_cb)));
    assert(((cast(*void)(*instance.depth_stencil_view_cb)) - cast(*void)(*instance)) == 40, "sg_wgpu_context_desc.depth_stencil_view_cb has unexpected offset % instead of 40", ((cast(*void)(*instance.depth_stencil_view_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.depth_stencil_view_cb)) == 8, "sg_wgpu_context_desc.depth_stencil_view_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.depth_stencil_view_cb)));
    assert(((cast(*void)(*instance.depth_stencil_view_userdata_cb)) - cast(*void)(*instance)) == 48, "sg_wgpu_context_desc.depth_stencil_view_userdata_cb has unexpected offset % instead of 48", ((cast(*void)(*instance.depth_stencil_view_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.depth_stencil_view_userdata_cb)) == 8, "sg_wgpu_context_desc.depth_stencil_view_userdata_cb has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.depth_stencil_view_userdata_cb)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 56, "sg_wgpu_context_desc.user_data has unexpected offset % instead of 56", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_wgpu_context_desc.user_data)) == 8, "sg_wgpu_context_desc.user_data has unexpected size % instead of 8", size_of(type_of(sg_wgpu_context_desc.user_data)));
    assert(size_of(sg_wgpu_context_desc) == 64, "sg_wgpu_context_desc has size % instead of 64", size_of(sg_wgpu_context_desc));
}

sg_context_desc :: struct {
    color_format: sg_pixel_format;
    depth_format: sg_pixel_format;
    sample_count: s32;
    gl:           sg_gl_context_desc;
    metal:        sg_metal_context_desc;
    d3d11:        sg_d3d11_context_desc;
    wgpu:         sg_wgpu_context_desc;
}
#run {
    instance: sg_context_desc;
    assert(((cast(*void)(*instance.color_format)) - cast(*void)(*instance)) == 0, "sg_context_desc.color_format has unexpected offset % instead of 0", ((cast(*void)(*instance.color_format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.color_format)) == 4, "sg_context_desc.color_format has unexpected size % instead of 4", size_of(type_of(sg_context_desc.color_format)));
    assert(((cast(*void)(*instance.depth_format)) - cast(*void)(*instance)) == 4, "sg_context_desc.depth_format has unexpected offset % instead of 4", ((cast(*void)(*instance.depth_format)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.depth_format)) == 4, "sg_context_desc.depth_format has unexpected size % instead of 4", size_of(type_of(sg_context_desc.depth_format)));
    assert(((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)) == 8, "sg_context_desc.sample_count has unexpected offset % instead of 8", ((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.sample_count)) == 4, "sg_context_desc.sample_count has unexpected size % instead of 4", size_of(type_of(sg_context_desc.sample_count)));
    assert(((cast(*void)(*instance.gl)) - cast(*void)(*instance)) == 12, "sg_context_desc.gl has unexpected offset % instead of 12", ((cast(*void)(*instance.gl)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.gl)) == 1, "sg_context_desc.gl has unexpected size % instead of 1", size_of(type_of(sg_context_desc.gl)));
    assert(((cast(*void)(*instance.metal)) - cast(*void)(*instance)) == 16, "sg_context_desc.metal has unexpected offset % instead of 16", ((cast(*void)(*instance.metal)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.metal)) == 48, "sg_context_desc.metal has unexpected size % instead of 48", size_of(type_of(sg_context_desc.metal)));
    assert(((cast(*void)(*instance.d3d11)) - cast(*void)(*instance)) == 64, "sg_context_desc.d3d11 has unexpected offset % instead of 64", ((cast(*void)(*instance.d3d11)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.d3d11)) == 56, "sg_context_desc.d3d11 has unexpected size % instead of 56", size_of(type_of(sg_context_desc.d3d11)));
    assert(((cast(*void)(*instance.wgpu)) - cast(*void)(*instance)) == 120, "sg_context_desc.wgpu has unexpected offset % instead of 120", ((cast(*void)(*instance.wgpu)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_context_desc.wgpu)) == 64, "sg_context_desc.wgpu has unexpected size % instead of 64", size_of(type_of(sg_context_desc.wgpu)));
    assert(size_of(sg_context_desc) == 184, "sg_context_desc has size % instead of 184", size_of(sg_context_desc));
}

sg_desc :: struct {
    _start_canary:       u32;
    buffer_pool_size:    s32;
    image_pool_size:     s32;
    shader_pool_size:    s32;
    pipeline_pool_size:  s32;
    pass_pool_size:      s32;
    context_pool_size:   s32;
    uniform_buffer_size: s32;
    staging_buffer_size: s32;
    sampler_cache_size:  s32;
    _context:            sg_context_desc;
    _end_canary:         u32;
}
#run {
    instance: sg_desc;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sg_desc._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc._start_canary)) == 4, "sg_desc._start_canary has unexpected size % instead of 4", size_of(type_of(sg_desc._start_canary)));
    assert(((cast(*void)(*instance.buffer_pool_size)) - cast(*void)(*instance)) == 4, "sg_desc.buffer_pool_size has unexpected offset % instead of 4", ((cast(*void)(*instance.buffer_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.buffer_pool_size)) == 4, "sg_desc.buffer_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.buffer_pool_size)));
    assert(((cast(*void)(*instance.image_pool_size)) - cast(*void)(*instance)) == 8, "sg_desc.image_pool_size has unexpected offset % instead of 8", ((cast(*void)(*instance.image_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.image_pool_size)) == 4, "sg_desc.image_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.image_pool_size)));
    assert(((cast(*void)(*instance.shader_pool_size)) - cast(*void)(*instance)) == 12, "sg_desc.shader_pool_size has unexpected offset % instead of 12", ((cast(*void)(*instance.shader_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.shader_pool_size)) == 4, "sg_desc.shader_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.shader_pool_size)));
    assert(((cast(*void)(*instance.pipeline_pool_size)) - cast(*void)(*instance)) == 16, "sg_desc.pipeline_pool_size has unexpected offset % instead of 16", ((cast(*void)(*instance.pipeline_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.pipeline_pool_size)) == 4, "sg_desc.pipeline_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.pipeline_pool_size)));
    assert(((cast(*void)(*instance.pass_pool_size)) - cast(*void)(*instance)) == 20, "sg_desc.pass_pool_size has unexpected offset % instead of 20", ((cast(*void)(*instance.pass_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.pass_pool_size)) == 4, "sg_desc.pass_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.pass_pool_size)));
    assert(((cast(*void)(*instance.context_pool_size)) - cast(*void)(*instance)) == 24, "sg_desc.context_pool_size has unexpected offset % instead of 24", ((cast(*void)(*instance.context_pool_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.context_pool_size)) == 4, "sg_desc.context_pool_size has unexpected size % instead of 4", size_of(type_of(sg_desc.context_pool_size)));
    assert(((cast(*void)(*instance.uniform_buffer_size)) - cast(*void)(*instance)) == 28, "sg_desc.uniform_buffer_size has unexpected offset % instead of 28", ((cast(*void)(*instance.uniform_buffer_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.uniform_buffer_size)) == 4, "sg_desc.uniform_buffer_size has unexpected size % instead of 4", size_of(type_of(sg_desc.uniform_buffer_size)));
    assert(((cast(*void)(*instance.staging_buffer_size)) - cast(*void)(*instance)) == 32, "sg_desc.staging_buffer_size has unexpected offset % instead of 32", ((cast(*void)(*instance.staging_buffer_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.staging_buffer_size)) == 4, "sg_desc.staging_buffer_size has unexpected size % instead of 4", size_of(type_of(sg_desc.staging_buffer_size)));
    assert(((cast(*void)(*instance.sampler_cache_size)) - cast(*void)(*instance)) == 36, "sg_desc.sampler_cache_size has unexpected offset % instead of 36", ((cast(*void)(*instance.sampler_cache_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc.sampler_cache_size)) == 4, "sg_desc.sampler_cache_size has unexpected size % instead of 4", size_of(type_of(sg_desc.sampler_cache_size)));
    assert(((cast(*void)(*instance._context)) - cast(*void)(*instance)) == 40, "sg_desc._context has unexpected offset % instead of 40", ((cast(*void)(*instance._context)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc._context)) == 184, "sg_desc._context has unexpected size % instead of 184", size_of(type_of(sg_desc._context)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 224, "sg_desc._end_canary has unexpected offset % instead of 224", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sg_desc._end_canary)) == 4, "sg_desc._end_canary has unexpected size % instead of 4", size_of(type_of(sg_desc._end_canary)));
    assert(size_of(sg_desc) == 232, "sg_desc has size % instead of 232", size_of(sg_desc));
}

/* setup and misc functions */
sg_setup :: (desc: *sg_desc) -> void #foreign sokol_gfx;
sg_shutdown :: () -> void #foreign sokol_gfx;
sg_isvalid :: () -> bool #foreign sokol_gfx;
sg_reset_state_cache :: () -> void #foreign sokol_gfx;
sg_install_trace_hooks :: (trace_hooks: *sg_trace_hooks) -> sg_trace_hooks #foreign sokol_gfx;
sg_push_debug_group :: (name: *u8) -> void #foreign sokol_gfx;
sg_pop_debug_group :: () -> void #foreign sokol_gfx;

/* resource creation, destruction and updating */
sg_make_buffer :: (desc: *sg_buffer_desc) -> sg_buffer #foreign sokol_gfx;
sg_make_image :: (desc: *sg_image_desc) -> sg_image #foreign sokol_gfx;
sg_make_shader :: (desc: *sg_shader_desc) -> sg_shader #foreign sokol_gfx;
sg_make_pipeline :: (desc: *sg_pipeline_desc) -> sg_pipeline #foreign sokol_gfx;
sg_make_pass :: (desc: *sg_pass_desc) -> sg_pass #foreign sokol_gfx;
sg_destroy_buffer :: (buf: sg_buffer) -> void #foreign sokol_gfx;
sg_destroy_image :: (img: sg_image) -> void #foreign sokol_gfx;
sg_destroy_shader :: (shd: sg_shader) -> void #foreign sokol_gfx;
sg_destroy_pipeline :: (pip: sg_pipeline) -> void #foreign sokol_gfx;
sg_destroy_pass :: (pass: sg_pass) -> void #foreign sokol_gfx;
sg_update_buffer :: (buf: sg_buffer, data: *sg_range) -> void #foreign sokol_gfx;
sg_update_image :: (img: sg_image, data: *sg_image_data) -> void #foreign sokol_gfx;
sg_append_buffer :: (buf: sg_buffer, data: *sg_range) -> s32 #foreign sokol_gfx;
sg_query_buffer_overflow :: (buf: sg_buffer) -> bool #foreign sokol_gfx;

/* rendering functions */
sg_begin_default_pass :: (pass_action: *sg_pass_action, width: s32, height: s32) -> void #foreign sokol_gfx;
sg_begin_default_passf :: (pass_action: *sg_pass_action, width: float, height: float) -> void #foreign sokol_gfx;
sg_begin_pass :: (pass: sg_pass, pass_action: *sg_pass_action) -> void #foreign sokol_gfx;
sg_apply_viewport :: (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool) -> void #foreign sokol_gfx;
sg_apply_viewportf :: (x: float, y: float, width: float, height: float, origin_top_left: bool) -> void #foreign sokol_gfx;
sg_apply_scissor_rect :: (x: s32, y: s32, width: s32, height: s32, origin_top_left: bool) -> void #foreign sokol_gfx;
sg_apply_scissor_rectf :: (x: float, y: float, width: float, height: float, origin_top_left: bool) -> void #foreign sokol_gfx;
sg_apply_pipeline :: (pip: sg_pipeline) -> void #foreign sokol_gfx;
sg_apply_bindings :: (bindings: *sg_bindings) -> void #foreign sokol_gfx;
sg_apply_uniforms :: (stage: sg_shader_stage, ub_index: s32, data: *sg_range) -> void #foreign sokol_gfx;
sg_draw :: (base_element: s32, num_elements: s32, num_instances: s32) -> void #foreign sokol_gfx;
sg_end_pass :: () -> void #foreign sokol_gfx;
sg_commit :: () -> void #foreign sokol_gfx;

/* getting information */
sg_query_desc :: () -> sg_desc #foreign sokol_gfx;
sg_query_backend :: () -> sg_backend #foreign sokol_gfx;
sg_query_features :: () -> sg_features #foreign sokol_gfx;
sg_query_limits :: () -> sg_limits #foreign sokol_gfx;
sg_query_pixelformat :: (fmt: sg_pixel_format) -> sg_pixelformat_info #foreign sokol_gfx;

/* get current state of a resource (INITIAL, ALLOC, VALID, FAILED, INVALID) */
sg_query_buffer_state :: (buf: sg_buffer) -> sg_resource_state #foreign sokol_gfx;
sg_query_image_state :: (img: sg_image) -> sg_resource_state #foreign sokol_gfx;
sg_query_shader_state :: (shd: sg_shader) -> sg_resource_state #foreign sokol_gfx;
sg_query_pipeline_state :: (pip: sg_pipeline) -> sg_resource_state #foreign sokol_gfx;
sg_query_pass_state :: (pass: sg_pass) -> sg_resource_state #foreign sokol_gfx;

/* get runtime information about a resource */
sg_query_buffer_info :: (buf: sg_buffer) -> sg_buffer_info #foreign sokol_gfx;
sg_query_image_info :: (img: sg_image) -> sg_image_info #foreign sokol_gfx;
sg_query_shader_info :: (shd: sg_shader) -> sg_shader_info #foreign sokol_gfx;
sg_query_pipeline_info :: (pip: sg_pipeline) -> sg_pipeline_info #foreign sokol_gfx;
sg_query_pass_info :: (pass: sg_pass) -> sg_pass_info #foreign sokol_gfx;

/* get resource creation desc struct with their default values replaced */
sg_query_buffer_defaults :: (desc: *sg_buffer_desc) -> sg_buffer_desc #foreign sokol_gfx;
sg_query_image_defaults :: (desc: *sg_image_desc) -> sg_image_desc #foreign sokol_gfx;
sg_query_shader_defaults :: (desc: *sg_shader_desc) -> sg_shader_desc #foreign sokol_gfx;
sg_query_pipeline_defaults :: (desc: *sg_pipeline_desc) -> sg_pipeline_desc #foreign sokol_gfx;
sg_query_pass_defaults :: (desc: *sg_pass_desc) -> sg_pass_desc #foreign sokol_gfx;

/* separate resource allocation and initialization (for async setup) */
sg_alloc_buffer :: () -> sg_buffer #foreign sokol_gfx;
sg_alloc_image :: () -> sg_image #foreign sokol_gfx;
sg_alloc_shader :: () -> sg_shader #foreign sokol_gfx;
sg_alloc_pipeline :: () -> sg_pipeline #foreign sokol_gfx;
sg_alloc_pass :: () -> sg_pass #foreign sokol_gfx;
sg_dealloc_buffer :: (buf_id: sg_buffer) -> void #foreign sokol_gfx;
sg_dealloc_image :: (img_id: sg_image) -> void #foreign sokol_gfx;
sg_dealloc_shader :: (shd_id: sg_shader) -> void #foreign sokol_gfx;
sg_dealloc_pipeline :: (pip_id: sg_pipeline) -> void #foreign sokol_gfx;
sg_dealloc_pass :: (pass_id: sg_pass) -> void #foreign sokol_gfx;
sg_init_buffer :: (buf_id: sg_buffer, desc: *sg_buffer_desc) -> void #foreign sokol_gfx;
sg_init_image :: (img_id: sg_image, desc: *sg_image_desc) -> void #foreign sokol_gfx;
sg_init_shader :: (shd_id: sg_shader, desc: *sg_shader_desc) -> void #foreign sokol_gfx;
sg_init_pipeline :: (pip_id: sg_pipeline, desc: *sg_pipeline_desc) -> void #foreign sokol_gfx;
sg_init_pass :: (pass_id: sg_pass, desc: *sg_pass_desc) -> void #foreign sokol_gfx;
sg_uninit_buffer :: (buf_id: sg_buffer) -> bool #foreign sokol_gfx;
sg_uninit_image :: (img_id: sg_image) -> bool #foreign sokol_gfx;
sg_uninit_shader :: (shd_id: sg_shader) -> bool #foreign sokol_gfx;
sg_uninit_pipeline :: (pip_id: sg_pipeline) -> bool #foreign sokol_gfx;
sg_uninit_pass :: (pass_id: sg_pass) -> bool #foreign sokol_gfx;
sg_fail_buffer :: (buf_id: sg_buffer) -> void #foreign sokol_gfx;
sg_fail_image :: (img_id: sg_image) -> void #foreign sokol_gfx;
sg_fail_shader :: (shd_id: sg_shader) -> void #foreign sokol_gfx;
sg_fail_pipeline :: (pip_id: sg_pipeline) -> void #foreign sokol_gfx;
sg_fail_pass :: (pass_id: sg_pass) -> void #foreign sokol_gfx;

/* rendering contexts (optional) */
sg_setup_context :: () -> sg_context #foreign sokol_gfx;
sg_activate_context :: (ctx_id: sg_context) -> void #foreign sokol_gfx;
sg_discard_context :: (ctx_id: sg_context) -> void #foreign sokol_gfx;

/* D3D11: return ID3D11Device */
sg_d3d11_device :: () -> *void #foreign sokol_gfx;

/* Metal: return __bridge-casted MTLDevice */
sg_mtl_device :: () -> *void #foreign sokol_gfx;

/* Metal: return __bridge-casted MTLRenderCommandEncoder in current pass (or zero if outside pass) */
sg_mtl_render_command_encoder :: () -> *void #foreign sokol_gfx;

#scope_file

#import "Basic"; // For assert

