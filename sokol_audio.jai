//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_AUDIO_INCLUDED :: 1;

saudio_log_item :: enum u32 {
    OK                                               :: 0;
    MALLOC_FAILED                                    :: 1;
    ALSA_SND_PCM_OPEN_FAILED                         :: 2;
    ALSA_FLOAT_SAMPLES_NOT_SUPPORTED                 :: 3;
    ALSA_REQUESTED_BUFFER_SIZE_NOT_SUPPORTED         :: 4;
    ALSA_REQUESTED_CHANNEL_COUNT_NOT_SUPPORTED       :: 5;
    ALSA_SND_PCM_HW_PARAMS_SET_RATE_NEAR_FAILED      :: 6;
    ALSA_SND_PCM_HW_PARAMS_FAILED                    :: 7;
    ALSA_PTHREAD_CREATE_FAILED                       :: 8;
    WASAPI_CREATE_EVENT_FAILED                       :: 9;
    WASAPI_CREATE_DEVICE_ENUMERATOR_FAILED           :: 10;
    WASAPI_GET_DEFAULT_AUDIO_ENDPOINT_FAILED         :: 11;
    WASAPI_DEVICE_ACTIVATE_FAILED                    :: 12;
    WASAPI_AUDIO_CLIENT_INITIALIZE_FAILED            :: 13;
    WASAPI_AUDIO_CLIENT_GET_BUFFER_SIZE_FAILED       :: 14;
    WASAPI_AUDIO_CLIENT_GET_SERVICE_FAILED           :: 15;
    WASAPI_AUDIO_CLIENT_SET_EVENT_HANDLE_FAILED      :: 16;
    WASAPI_CREATE_THREAD_FAILED                      :: 17;
    AAUDIO_STREAMBUILDER_OPEN_STREAM_FAILED          :: 18;
    AAUDIO_PTHREAD_CREATE_FAILED                     :: 19;
    AAUDIO_RESTARTING_STREAM_AFTER_ERROR             :: 20;
    USING_AAUDIO_BACKEND                             :: 21;
    AAUDIO_CREATE_STREAMBUILDER_FAILED               :: 22;
    USING_SLES_BACKEND                               :: 23;
    SLES_CREATE_ENGINE_FAILED                        :: 24;
    SLES_ENGINE_GET_ENGINE_INTERFACE_FAILED          :: 25;
    SLES_CREATE_OUTPUT_MIX_FAILED                    :: 26;
    SLES_MIXER_GET_VOLUME_INTERFACE_FAILED           :: 27;
    SLES_ENGINE_CREATE_AUDIO_PLAYER_FAILED           :: 28;
    SLES_PLAYER_GET_PLAY_INTERFACE_FAILED            :: 29;
    SLES_PLAYER_GET_VOLUME_INTERFACE_FAILED          :: 30;
    SLES_PLAYER_GET_BUFFERQUEUE_INTERFACE_FAILED     :: 31;
    COREAUDIO_NEW_OUTPUT_FAILED                      :: 32;
    COREAUDIO_ALLOCATE_BUFFER_FAILED                 :: 33;
    COREAUDIO_START_FAILED                           :: 34;
    BACKEND_BUFFER_SIZE_ISNT_MULTIPLE_OF_PACKET_SIZE :: 35;
    SAUDIO_LOGITEM_OK                                               :: OK;
    SAUDIO_LOGITEM_MALLOC_FAILED                                    :: MALLOC_FAILED;
    SAUDIO_LOGITEM_ALSA_SND_PCM_OPEN_FAILED                         :: ALSA_SND_PCM_OPEN_FAILED;
    SAUDIO_LOGITEM_ALSA_FLOAT_SAMPLES_NOT_SUPPORTED                 :: ALSA_FLOAT_SAMPLES_NOT_SUPPORTED;
    SAUDIO_LOGITEM_ALSA_REQUESTED_BUFFER_SIZE_NOT_SUPPORTED         :: ALSA_REQUESTED_BUFFER_SIZE_NOT_SUPPORTED;
    SAUDIO_LOGITEM_ALSA_REQUESTED_CHANNEL_COUNT_NOT_SUPPORTED       :: ALSA_REQUESTED_CHANNEL_COUNT_NOT_SUPPORTED;
    SAUDIO_LOGITEM_ALSA_SND_PCM_HW_PARAMS_SET_RATE_NEAR_FAILED      :: ALSA_SND_PCM_HW_PARAMS_SET_RATE_NEAR_FAILED;
    SAUDIO_LOGITEM_ALSA_SND_PCM_HW_PARAMS_FAILED                    :: ALSA_SND_PCM_HW_PARAMS_FAILED;
    SAUDIO_LOGITEM_ALSA_PTHREAD_CREATE_FAILED                       :: ALSA_PTHREAD_CREATE_FAILED;
    SAUDIO_LOGITEM_WASAPI_CREATE_EVENT_FAILED                       :: WASAPI_CREATE_EVENT_FAILED;
    SAUDIO_LOGITEM_WASAPI_CREATE_DEVICE_ENUMERATOR_FAILED           :: WASAPI_CREATE_DEVICE_ENUMERATOR_FAILED;
    SAUDIO_LOGITEM_WASAPI_GET_DEFAULT_AUDIO_ENDPOINT_FAILED         :: WASAPI_GET_DEFAULT_AUDIO_ENDPOINT_FAILED;
    SAUDIO_LOGITEM_WASAPI_DEVICE_ACTIVATE_FAILED                    :: WASAPI_DEVICE_ACTIVATE_FAILED;
    SAUDIO_LOGITEM_WASAPI_AUDIO_CLIENT_INITIALIZE_FAILED            :: WASAPI_AUDIO_CLIENT_INITIALIZE_FAILED;
    SAUDIO_LOGITEM_WASAPI_AUDIO_CLIENT_GET_BUFFER_SIZE_FAILED       :: WASAPI_AUDIO_CLIENT_GET_BUFFER_SIZE_FAILED;
    SAUDIO_LOGITEM_WASAPI_AUDIO_CLIENT_GET_SERVICE_FAILED           :: WASAPI_AUDIO_CLIENT_GET_SERVICE_FAILED;
    SAUDIO_LOGITEM_WASAPI_AUDIO_CLIENT_SET_EVENT_HANDLE_FAILED      :: WASAPI_AUDIO_CLIENT_SET_EVENT_HANDLE_FAILED;
    SAUDIO_LOGITEM_WASAPI_CREATE_THREAD_FAILED                      :: WASAPI_CREATE_THREAD_FAILED;
    SAUDIO_LOGITEM_AAUDIO_STREAMBUILDER_OPEN_STREAM_FAILED          :: AAUDIO_STREAMBUILDER_OPEN_STREAM_FAILED;
    SAUDIO_LOGITEM_AAUDIO_PTHREAD_CREATE_FAILED                     :: AAUDIO_PTHREAD_CREATE_FAILED;
    SAUDIO_LOGITEM_AAUDIO_RESTARTING_STREAM_AFTER_ERROR             :: AAUDIO_RESTARTING_STREAM_AFTER_ERROR;
    SAUDIO_LOGITEM_USING_AAUDIO_BACKEND                             :: USING_AAUDIO_BACKEND;
    SAUDIO_LOGITEM_AAUDIO_CREATE_STREAMBUILDER_FAILED               :: AAUDIO_CREATE_STREAMBUILDER_FAILED;
    SAUDIO_LOGITEM_USING_SLES_BACKEND                               :: USING_SLES_BACKEND;
    SAUDIO_LOGITEM_SLES_CREATE_ENGINE_FAILED                        :: SLES_CREATE_ENGINE_FAILED;
    SAUDIO_LOGITEM_SLES_ENGINE_GET_ENGINE_INTERFACE_FAILED          :: SLES_ENGINE_GET_ENGINE_INTERFACE_FAILED;
    SAUDIO_LOGITEM_SLES_CREATE_OUTPUT_MIX_FAILED                    :: SLES_CREATE_OUTPUT_MIX_FAILED;
    SAUDIO_LOGITEM_SLES_MIXER_GET_VOLUME_INTERFACE_FAILED           :: SLES_MIXER_GET_VOLUME_INTERFACE_FAILED;
    SAUDIO_LOGITEM_SLES_ENGINE_CREATE_AUDIO_PLAYER_FAILED           :: SLES_ENGINE_CREATE_AUDIO_PLAYER_FAILED;
    SAUDIO_LOGITEM_SLES_PLAYER_GET_PLAY_INTERFACE_FAILED            :: SLES_PLAYER_GET_PLAY_INTERFACE_FAILED;
    SAUDIO_LOGITEM_SLES_PLAYER_GET_VOLUME_INTERFACE_FAILED          :: SLES_PLAYER_GET_VOLUME_INTERFACE_FAILED;
    SAUDIO_LOGITEM_SLES_PLAYER_GET_BUFFERQUEUE_INTERFACE_FAILED     :: SLES_PLAYER_GET_BUFFERQUEUE_INTERFACE_FAILED;
    SAUDIO_LOGITEM_COREAUDIO_NEW_OUTPUT_FAILED                      :: COREAUDIO_NEW_OUTPUT_FAILED;
    SAUDIO_LOGITEM_COREAUDIO_ALLOCATE_BUFFER_FAILED                 :: COREAUDIO_ALLOCATE_BUFFER_FAILED;
    SAUDIO_LOGITEM_COREAUDIO_START_FAILED                           :: COREAUDIO_START_FAILED;
    SAUDIO_LOGITEM_BACKEND_BUFFER_SIZE_ISNT_MULTIPLE_OF_PACKET_SIZE :: BACKEND_BUFFER_SIZE_ISNT_MULTIPLE_OF_PACKET_SIZE;
}

/*
saudio_logger

Used in saudio_desc to provide a custom logging and error reporting
callback to sokol-audio.
*/
saudio_logger :: struct {
    func:      #type (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call;

    user_data: *void;
}
#run {
    instance: saudio_logger;
    assert(((cast(*void)(*instance.func)) - cast(*void)(*instance)) == 0, "saudio_logger.func has unexpected offset % instead of 0", ((cast(*void)(*instance.func)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_logger.func)) == 8, "saudio_logger.func has unexpected size % instead of 8", size_of(type_of(saudio_logger.func)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 8, "saudio_logger.user_data has unexpected offset % instead of 8", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_logger.user_data)) == 8, "saudio_logger.user_data has unexpected size % instead of 8", size_of(type_of(saudio_logger.user_data)));
    assert(size_of(saudio_logger) == 16, "saudio_logger has size % instead of 16", size_of(saudio_logger));
}

/*
saudio_allocator

Used in saudio_desc to provide custom memory-alloc and -free functions
to sokol_audio.h. If memory management should be overridden, both the
alloc and free function must be provided (e.g. it's not valid to
override one function but not the other).
*/
saudio_allocator :: struct {
    alloc:     #type (size: size_t, user_data: *void) -> *void #c_call;
    free:      #type (ptr: *void, user_data: *void) -> void #c_call;
    user_data: *void;
}
#run {
    instance: saudio_allocator;
    assert(((cast(*void)(*instance.alloc)) - cast(*void)(*instance)) == 0, "saudio_allocator.alloc has unexpected offset % instead of 0", ((cast(*void)(*instance.alloc)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_allocator.alloc)) == 8, "saudio_allocator.alloc has unexpected size % instead of 8", size_of(type_of(saudio_allocator.alloc)));
    assert(((cast(*void)(*instance.free)) - cast(*void)(*instance)) == 8, "saudio_allocator.free has unexpected offset % instead of 8", ((cast(*void)(*instance.free)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_allocator.free)) == 8, "saudio_allocator.free has unexpected size % instead of 8", size_of(type_of(saudio_allocator.free)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 16, "saudio_allocator.user_data has unexpected offset % instead of 16", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_allocator.user_data)) == 8, "saudio_allocator.user_data has unexpected size % instead of 8", size_of(type_of(saudio_allocator.user_data)));
    assert(size_of(saudio_allocator) == 24, "saudio_allocator has size % instead of 24", size_of(saudio_allocator));
}

saudio_desc :: struct {
    sample_rate:        s32; // requested sample rate
    num_channels:       s32; // number of channels, default: 1 (mono)
    buffer_frames:      s32; // number of frames in streaming buffer
    packet_frames:      s32; // number of frames in a packet
    num_packets:        s32; // number of packets in packet queue
    stream_cb:          #type (buffer: *float, num_frames: s32, num_channels: s32) -> void #c_call; // optional streaming callback (no user data)
    stream_userdata_cb: #type (buffer: *float, num_frames: s32, num_channels: s32, user_data: *void) -> void #c_call; //... and with user data
    user_data:          *void; // optional user data argument for stream_userdata_cb
    allocator:          saudio_allocator; // optional allocation override functions
    logger:             saudio_logger; // optional logging function (default: NO LOGGING!)
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
    assert(((cast(*void)(*instance.allocator)) - cast(*void)(*instance)) == 48, "saudio_desc.allocator has unexpected offset % instead of 48", ((cast(*void)(*instance.allocator)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.allocator)) == 24, "saudio_desc.allocator has unexpected size % instead of 24", size_of(type_of(saudio_desc.allocator)));
    assert(((cast(*void)(*instance.logger)) - cast(*void)(*instance)) == 72, "saudio_desc.logger has unexpected offset % instead of 72", ((cast(*void)(*instance.logger)) - cast(*void)(*instance)));
    assert(size_of(type_of(saudio_desc.logger)) == 16, "saudio_desc.logger has unexpected size % instead of 16", size_of(type_of(saudio_desc.logger)));
    assert(size_of(saudio_desc) == 88, "saudio_desc has size % instead of 88", size_of(saudio_desc));
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

/* return true if audio context is currently suspended (only in WebAudio backend, all other backends return false) */
saudio_suspended :: () -> bool #foreign sokol_audio;

/* get current number of frames to fill packet queue */
saudio_expect :: () -> s32 #foreign sokol_audio;

/* push sample frames from main thread, returns number of frames actually pushed */
saudio_push :: (frames: *float, num_frames: s32) -> s32 #foreign sokol_audio;

#scope_file

#import "Basic"; // For assert

