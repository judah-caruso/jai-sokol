//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_AUDIO_INCLUDED :: 1;

saudio_desc :: struct {
    sample_rate:        s32; /* requested sample rate */
    num_channels:       s32; /* number of channels, default: 1 (mono) */
    buffer_frames:      s32; /* number of frames in streaming buffer */
    packet_frames:      s32; /* number of frames in a packet */
    num_packets:        s32; /* number of packets in packet queue */
    stream_cb:          #type (buffer: *float, num_frames: s32, num_channels: s32) -> void #c_call; /* optional streaming callback (no user data) */
    stream_userdata_cb: #type (buffer: *float, num_frames: s32, num_channels: s32, user_data: *void) -> void #c_call; /*... and with user data */
    user_data:          *void; /* optional user data argument for stream_userdata_cb */
}
#run {
    instance: saudio_desc;
    assert(((cast(*void)(*instance.sample_rate)) - cast(*void)(*instance)) == 0, "saudio_desc.sample_rate has unexpected offset % instead of 0", ((cast(*void)(*instance.sample_rate)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.sample_rate)) == 4, "saudio_desc.sample_rate has unexpected size % instead of 4", size_of(type_of(saudio_desc.sample_rate)));
    assert(((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)) == 4, "saudio_desc.num_channels has unexpected offset % instead of 4", ((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.num_channels)) == 4, "saudio_desc.num_channels has unexpected size % instead of 4", size_of(type_of(saudio_desc.num_channels)));
    assert(((cast(*void)(*instance.buffer_frames)) - cast(*void)(*instance)) == 8, "saudio_desc.buffer_frames has unexpected offset % instead of 8", ((cast(*void)(*instance.buffer_frames)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.buffer_frames)) == 4, "saudio_desc.buffer_frames has unexpected size % instead of 4", size_of(type_of(saudio_desc.buffer_frames)));
    assert(((cast(*void)(*instance.packet_frames)) - cast(*void)(*instance)) == 12, "saudio_desc.packet_frames has unexpected offset % instead of 12", ((cast(*void)(*instance.packet_frames)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.packet_frames)) == 4, "saudio_desc.packet_frames has unexpected size % instead of 4", size_of(type_of(saudio_desc.packet_frames)));
    assert(((cast(*void)(*instance.num_packets)) - cast(*void)(*instance)) == 16, "saudio_desc.num_packets has unexpected offset % instead of 16", ((cast(*void)(*instance.num_packets)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.num_packets)) == 4, "saudio_desc.num_packets has unexpected size % instead of 4", size_of(type_of(saudio_desc.num_packets)));
    assert(((cast(*void)(*instance.stream_cb)) - cast(*void)(*instance)) == 24, "saudio_desc.stream_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.stream_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.stream_cb)) == 8, "saudio_desc.stream_cb has unexpected size % instead of 8", size_of(type_of(saudio_desc.stream_cb)));
    assert(((cast(*void)(*instance.stream_userdata_cb)) - cast(*void)(*instance)) == 32, "saudio_desc.stream_userdata_cb has unexpected offset % instead of 32", ((cast(*void)(*instance.stream_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.stream_userdata_cb)) == 8, "saudio_desc.stream_userdata_cb has unexpected size % instead of 8", size_of(type_of(saudio_desc.stream_userdata_cb)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 40, "saudio_desc.user_data has unexpected offset % instead of 40", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.user_data)) == 8, "saudio_desc.user_data has unexpected size % instead of 8", size_of(type_of(saudio_desc.user_data)));
    assert(size_of(saudio_desc) == 48, "saudio_desc has size % instead of 48", size_of(saudio_desc));
}

/* setup sokol-audio */
saudio_setup :: (desc: *saudio_desc) -> void #foreign sokol_audio;

/* shutdown sokol-audio */
saudio_shutdown :: () -> void #foreign sokol_audio;

/* true after setup if audio backend was successfully initialized */
saudio_isvalid :: () -> bool #foreign sokol_audio;

/* return the saudio_desc.user_data pointer */
saudio_userdata :: () -> *void #foreign sokol_audio;

/* return a copy of the original saudio_desc struct */
saudio_query_desc :: () -> saudio_desc #foreign sokol_audio;

/* actual sample rate */
saudio_sample_rate :: () -> s32 #foreign sokol_audio;

/* return actual backend buffer size in number of frames */
saudio_buffer_frames :: () -> s32 #foreign sokol_audio;

/* actual number of channels */
saudio_channels :: () -> s32 #foreign sokol_audio;

/* get current number of frames to fill packet queue */
saudio_expect :: () -> s32 #foreign sokol_audio;

/* push sample frames from main thread, returns number of frames actually pushed */
saudio_push :: (frames: *float, num_frames: s32) -> s32 #foreign sokol_audio;

#scope_file

#import "Basic"; // For assert

