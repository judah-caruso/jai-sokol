//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_FETCH_INCLUDED :: 1;

/* configuration values for sfetch_setup() */
sfetch_desc_t :: struct {
    _start_canary: u32;
    max_requests:  u32; /* max number of active requests across all channels, default is 128 */
    num_channels:  u32; /* number of channels to fetch requests in parallel, default is 1 */
    num_lanes:     u32; /* max number of requests active on the same channel, default is 1 */
    _end_canary:   u32;
}
#run {
    instance: sfetch_desc_t;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sfetch_desc_t._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t._start_canary)) == 4, "sfetch_desc_t._start_canary has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t._start_canary)));
    assert(((cast(*void)(*instance.max_requests)) - cast(*void)(*instance)) == 4, "sfetch_desc_t.max_requests has unexpected offset % instead of 4", ((cast(*void)(*instance.max_requests)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.max_requests)) == 4, "sfetch_desc_t.max_requests has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.max_requests)));
    assert(((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)) == 8, "sfetch_desc_t.num_channels has unexpected offset % instead of 8", ((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.num_channels)) == 4, "sfetch_desc_t.num_channels has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.num_channels)));
    assert(((cast(*void)(*instance.num_lanes)) - cast(*void)(*instance)) == 12, "sfetch_desc_t.num_lanes has unexpected offset % instead of 12", ((cast(*void)(*instance.num_lanes)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.num_lanes)) == 4, "sfetch_desc_t.num_lanes has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.num_lanes)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 16, "sfetch_desc_t._end_canary has unexpected offset % instead of 16", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t._end_canary)) == 4, "sfetch_desc_t._end_canary has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t._end_canary)));
    assert(size_of(sfetch_desc_t) == 20, "sfetch_desc_t has size % instead of 20", size_of(sfetch_desc_t));
}

/* a request handle to identify an active fetch request, returned by sfetch_send() */
sfetch_handle_t :: struct {
    id: u32;
}
#run {
    instance: sfetch_handle_t;
    assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "sfetch_handle_t.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_handle_t.id)) == 4, "sfetch_handle_t.id has unexpected size % instead of 4", size_of(type_of(sfetch_handle_t.id)));
    assert(size_of(sfetch_handle_t) == 4, "sfetch_handle_t has size % instead of 4", size_of(sfetch_handle_t));
}

/* error codes */
sfetch_error_t :: enum u32 {
    NO_ERROR            :: 0;
    FILE_NOT_FOUND      :: 1;
    NO_BUFFER           :: 2;
    BUFFER_TOO_SMALL    :: 3;
    UNEXPECTED_EOF      :: 4;
    INVALID_HTTP_STATUS :: 5;
    CANCELLED           :: 6;

    SFETCH_ERROR_NO_ERROR            :: NO_ERROR;
    SFETCH_ERROR_FILE_NOT_FOUND      :: FILE_NOT_FOUND;
    SFETCH_ERROR_NO_BUFFER           :: NO_BUFFER;
    SFETCH_ERROR_BUFFER_TOO_SMALL    :: BUFFER_TOO_SMALL;
    SFETCH_ERROR_UNEXPECTED_EOF      :: UNEXPECTED_EOF;
    SFETCH_ERROR_INVALID_HTTP_STATUS :: INVALID_HTTP_STATUS;
    SFETCH_ERROR_CANCELLED           :: CANCELLED;
}

/* the response struct passed to the response callback */
sfetch_response_t :: struct {
    handle:         sfetch_handle_t; /* request handle this response belongs to */
    dispatched:     bool; /* true when request is in DISPATCHED state (lane has been assigned) */
    fetched:        bool; /* true when request is in FETCHED state (fetched data is available) */
    paused:         bool; /* request is currently in paused state */
    finished:       bool; /* this is the last response for this request */
    failed:         bool; /* request has failed (always set together with 'finished') */
    cancelled:      bool; /* request was cancelled (always set together with 'finished') */
    error_code:     sfetch_error_t; /* more detailed error code when failed is true */
    channel:        u32; /* the channel which processes this request */
    lane:           u32; /* the lane this request occupies on its channel */
    path:           *u8; /* the original filesystem path of the request (FIXME: this is unsafe, wrap in API call?) */
    user_data:      *void; /* pointer to read/write user-data area (FIXME: this is unsafe, wrap in API call?) */
    fetched_offset: u32; /* current offset of fetched data chunk in file data */
    fetched_size:   u32; /* size of fetched data chunk in number of bytes */
    buffer_ptr:     *void; /* pointer to buffer with fetched data */
    buffer_size:    u32; /* overall buffer size (may be >= than fetched_size!) */
}
#run {
    instance: sfetch_response_t;
    assert(((cast(*void)(*instance.handle)) - cast(*void)(*instance)) == 0, "sfetch_response_t.handle has unexpected offset % instead of 0", ((cast(*void)(*instance.handle)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.handle)) == 4, "sfetch_response_t.handle has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.handle)));
    assert(((cast(*void)(*instance.dispatched)) - cast(*void)(*instance)) == 4, "sfetch_response_t.dispatched has unexpected offset % instead of 4", ((cast(*void)(*instance.dispatched)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.dispatched)) == 1, "sfetch_response_t.dispatched has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.dispatched)));
    assert(((cast(*void)(*instance.fetched)) - cast(*void)(*instance)) == 5, "sfetch_response_t.fetched has unexpected offset % instead of 5", ((cast(*void)(*instance.fetched)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.fetched)) == 1, "sfetch_response_t.fetched has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.fetched)));
    assert(((cast(*void)(*instance.paused)) - cast(*void)(*instance)) == 6, "sfetch_response_t.paused has unexpected offset % instead of 6", ((cast(*void)(*instance.paused)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.paused)) == 1, "sfetch_response_t.paused has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.paused)));
    assert(((cast(*void)(*instance.finished)) - cast(*void)(*instance)) == 7, "sfetch_response_t.finished has unexpected offset % instead of 7", ((cast(*void)(*instance.finished)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.finished)) == 1, "sfetch_response_t.finished has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.finished)));
    assert(((cast(*void)(*instance.failed)) - cast(*void)(*instance)) == 8, "sfetch_response_t.failed has unexpected offset % instead of 8", ((cast(*void)(*instance.failed)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.failed)) == 1, "sfetch_response_t.failed has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.failed)));
    assert(((cast(*void)(*instance.cancelled)) - cast(*void)(*instance)) == 9, "sfetch_response_t.cancelled has unexpected offset % instead of 9", ((cast(*void)(*instance.cancelled)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.cancelled)) == 1, "sfetch_response_t.cancelled has unexpected size % instead of 1", size_of(type_of(sfetch_response_t.cancelled)));
    assert(((cast(*void)(*instance.error_code)) - cast(*void)(*instance)) == 12, "sfetch_response_t.error_code has unexpected offset % instead of 12", ((cast(*void)(*instance.error_code)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.error_code)) == 4, "sfetch_response_t.error_code has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.error_code)));
    assert(((cast(*void)(*instance.channel)) - cast(*void)(*instance)) == 16, "sfetch_response_t.channel has unexpected offset % instead of 16", ((cast(*void)(*instance.channel)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.channel)) == 4, "sfetch_response_t.channel has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.channel)));
    assert(((cast(*void)(*instance.lane)) - cast(*void)(*instance)) == 20, "sfetch_response_t.lane has unexpected offset % instead of 20", ((cast(*void)(*instance.lane)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.lane)) == 4, "sfetch_response_t.lane has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.lane)));
    assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 24, "sfetch_response_t.path has unexpected offset % instead of 24", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.path)) == 8, "sfetch_response_t.path has unexpected size % instead of 8", size_of(type_of(sfetch_response_t.path)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 32, "sfetch_response_t.user_data has unexpected offset % instead of 32", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.user_data)) == 8, "sfetch_response_t.user_data has unexpected size % instead of 8", size_of(type_of(sfetch_response_t.user_data)));
    assert(((cast(*void)(*instance.fetched_offset)) - cast(*void)(*instance)) == 40, "sfetch_response_t.fetched_offset has unexpected offset % instead of 40", ((cast(*void)(*instance.fetched_offset)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.fetched_offset)) == 4, "sfetch_response_t.fetched_offset has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.fetched_offset)));
    assert(((cast(*void)(*instance.fetched_size)) - cast(*void)(*instance)) == 44, "sfetch_response_t.fetched_size has unexpected offset % instead of 44", ((cast(*void)(*instance.fetched_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.fetched_size)) == 4, "sfetch_response_t.fetched_size has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.fetched_size)));
    assert(((cast(*void)(*instance.buffer_ptr)) - cast(*void)(*instance)) == 48, "sfetch_response_t.buffer_ptr has unexpected offset % instead of 48", ((cast(*void)(*instance.buffer_ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.buffer_ptr)) == 8, "sfetch_response_t.buffer_ptr has unexpected size % instead of 8", size_of(type_of(sfetch_response_t.buffer_ptr)));
    assert(((cast(*void)(*instance.buffer_size)) - cast(*void)(*instance)) == 56, "sfetch_response_t.buffer_size has unexpected offset % instead of 56", ((cast(*void)(*instance.buffer_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.buffer_size)) == 4, "sfetch_response_t.buffer_size has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.buffer_size)));
    assert(size_of(sfetch_response_t) == 64, "sfetch_response_t has size % instead of 64", size_of(sfetch_response_t));
}

/* response callback function signature */
sfetch_callback_t :: #type (unknown0: *sfetch_response_t) -> void #c_call;

/* request parameters passed to sfetch_send() */
sfetch_request_t :: struct {
    _start_canary:  u32;
    channel:        u32; /* index of channel this request is assigned to (default: 0) */
    path:           *u8; /* filesystem path or HTTP URL (required) */
    callback:       sfetch_callback_t; /* response callback function pointer (required) */
    buffer_ptr:     *void; /* buffer pointer where data will be loaded into (optional) */
    buffer_size:    u32; /* buffer size in number of bytes (optional) */
    chunk_size:     u32; /* number of bytes to load per stream-block (optional) */
    user_data_ptr:  *void; /* pointer to a POD user-data block which will be memcpy'd(!) (optional) */
    user_data_size: u32; /* size of user-data block (optional) */
    _end_canary:    u32;
}
#run {
    instance: sfetch_request_t;
    assert(((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)) == 0, "sfetch_request_t._start_canary has unexpected offset % instead of 0", ((cast(*void)(*instance._start_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t._start_canary)) == 4, "sfetch_request_t._start_canary has unexpected size % instead of 4", size_of(type_of(sfetch_request_t._start_canary)));
    assert(((cast(*void)(*instance.channel)) - cast(*void)(*instance)) == 4, "sfetch_request_t.channel has unexpected offset % instead of 4", ((cast(*void)(*instance.channel)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.channel)) == 4, "sfetch_request_t.channel has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.channel)));
    assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 8, "sfetch_request_t.path has unexpected offset % instead of 8", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.path)) == 8, "sfetch_request_t.path has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.path)));
    assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 16, "sfetch_request_t.callback has unexpected offset % instead of 16", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.callback)) == 8, "sfetch_request_t.callback has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.callback)));
    assert(((cast(*void)(*instance.buffer_ptr)) - cast(*void)(*instance)) == 24, "sfetch_request_t.buffer_ptr has unexpected offset % instead of 24", ((cast(*void)(*instance.buffer_ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.buffer_ptr)) == 8, "sfetch_request_t.buffer_ptr has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.buffer_ptr)));
    assert(((cast(*void)(*instance.buffer_size)) - cast(*void)(*instance)) == 32, "sfetch_request_t.buffer_size has unexpected offset % instead of 32", ((cast(*void)(*instance.buffer_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.buffer_size)) == 4, "sfetch_request_t.buffer_size has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.buffer_size)));
    assert(((cast(*void)(*instance.chunk_size)) - cast(*void)(*instance)) == 36, "sfetch_request_t.chunk_size has unexpected offset % instead of 36", ((cast(*void)(*instance.chunk_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.chunk_size)) == 4, "sfetch_request_t.chunk_size has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.chunk_size)));
    assert(((cast(*void)(*instance.user_data_ptr)) - cast(*void)(*instance)) == 40, "sfetch_request_t.user_data_ptr has unexpected offset % instead of 40", ((cast(*void)(*instance.user_data_ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.user_data_ptr)) == 8, "sfetch_request_t.user_data_ptr has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.user_data_ptr)));
    assert(((cast(*void)(*instance.user_data_size)) - cast(*void)(*instance)) == 48, "sfetch_request_t.user_data_size has unexpected offset % instead of 48", ((cast(*void)(*instance.user_data_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.user_data_size)) == 4, "sfetch_request_t.user_data_size has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.user_data_size)));
    assert(((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)) == 52, "sfetch_request_t._end_canary has unexpected offset % instead of 52", ((cast(*void)(*instance._end_canary)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t._end_canary)) == 4, "sfetch_request_t._end_canary has unexpected size % instead of 4", size_of(type_of(sfetch_request_t._end_canary)));
    assert(size_of(sfetch_request_t) == 56, "sfetch_request_t has size % instead of 56", size_of(sfetch_request_t));
}

/* setup sokol-fetch (can be called on multiple threads) */
sfetch_setup :: (desc: *sfetch_desc_t) -> void #foreign sokol_fetch;

/* discard a sokol-fetch context */
sfetch_shutdown :: () -> void #foreign sokol_fetch;

/* return true if sokol-fetch has been setup */
sfetch_valid :: () -> bool #foreign sokol_fetch;

/* get the desc struct that was passed to sfetch_setup() */
sfetch_desc :: () -> sfetch_desc_t #foreign sokol_fetch;

/* return the max userdata size in number of bytes (SFETCH_MAX_USERDATA_UINT64 * sizeof(uint64_t)) */
sfetch_max_userdata_bytes :: () -> s32 #foreign sokol_fetch;

/* return the value of the SFETCH_MAX_PATH implementation config value */
sfetch_max_path :: () -> s32 #foreign sokol_fetch;

/* send a fetch-request, get handle to request back */
sfetch_send :: (request: *sfetch_request_t) -> sfetch_handle_t #foreign sokol_fetch;

/* return true if a handle is valid *and* the request is alive */
sfetch_handle_valid :: (h: sfetch_handle_t) -> bool #foreign sokol_fetch;

/* do per-frame work, moves requests into and out of IO threads, and invokes response-callbacks */
sfetch_dowork :: () -> void #foreign sokol_fetch;

/* bind a data buffer to a request (request must not currently have a buffer bound, must be called from response callback */
sfetch_bind_buffer :: (h: sfetch_handle_t, buffer_ptr: *void, buffer_size: u32) -> void #foreign sokol_fetch;

/* clear the 'buffer binding' of a request, returns previous buffer pointer (can be 0), must be called from response callback */
sfetch_unbind_buffer :: (h: sfetch_handle_t) -> *void #foreign sokol_fetch;

/* cancel a request that's in flight (will call response callback with .cancelled + .finished) */
sfetch_cancel :: (h: sfetch_handle_t) -> void #foreign sokol_fetch;

/* pause a request (will call response callback each frame with .paused) */
sfetch_pause :: (h: sfetch_handle_t) -> void #foreign sokol_fetch;

/* continue a paused request */
sfetch_continue :: (h: sfetch_handle_t) -> void #foreign sokol_fetch;

#scope_file

#import "Basic"; // For assert

