//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_FETCH_INCLUDED :: 1;

sfetch_log_item_t :: enum u32 {
    OK                                                    :: 0;
    MALLOC_FAILED                                         :: 1;
    FILE_PATH_UTF8_DECODING_FAILED                        :: 2;
    SEND_QUEUE_FULL                                       :: 3;
    REQUEST_CHANNEL_INDEX_TOO_BIG                         :: 4;
    REQUEST_PATH_IS_NULL                                  :: 5;
    REQUEST_PATH_TOO_LONG                                 :: 6;
    REQUEST_CALLBACK_MISSING                              :: 7;
    REQUEST_CHUNK_SIZE_GREATER_BUFFER_SIZE                :: 8;
    REQUEST_USERDATA_PTR_IS_SET_BUT_USERDATA_SIZE_IS_NULL :: 9;
    REQUEST_USERDATA_PTR_IS_NULL_BUT_USERDATA_SIZE_IS_NOT :: 10;
    REQUEST_USERDATA_SIZE_TOO_BIG                         :: 11;
    CLAMPING_NUM_CHANNELS_TO_MAX_CHANNELS                 :: 12;
    REQUEST_POOL_EXHAUSTED                                :: 13;
    SFETCH_LOGITEM_OK                                                    :: OK;
    SFETCH_LOGITEM_MALLOC_FAILED                                         :: MALLOC_FAILED;
    SFETCH_LOGITEM_FILE_PATH_UTF8_DECODING_FAILED                        :: FILE_PATH_UTF8_DECODING_FAILED;
    SFETCH_LOGITEM_SEND_QUEUE_FULL                                       :: SEND_QUEUE_FULL;
    SFETCH_LOGITEM_REQUEST_CHANNEL_INDEX_TOO_BIG                         :: REQUEST_CHANNEL_INDEX_TOO_BIG;
    SFETCH_LOGITEM_REQUEST_PATH_IS_NULL                                  :: REQUEST_PATH_IS_NULL;
    SFETCH_LOGITEM_REQUEST_PATH_TOO_LONG                                 :: REQUEST_PATH_TOO_LONG;
    SFETCH_LOGITEM_REQUEST_CALLBACK_MISSING                              :: REQUEST_CALLBACK_MISSING;
    SFETCH_LOGITEM_REQUEST_CHUNK_SIZE_GREATER_BUFFER_SIZE                :: REQUEST_CHUNK_SIZE_GREATER_BUFFER_SIZE;
    SFETCH_LOGITEM_REQUEST_USERDATA_PTR_IS_SET_BUT_USERDATA_SIZE_IS_NULL :: REQUEST_USERDATA_PTR_IS_SET_BUT_USERDATA_SIZE_IS_NULL;
    SFETCH_LOGITEM_REQUEST_USERDATA_PTR_IS_NULL_BUT_USERDATA_SIZE_IS_NOT :: REQUEST_USERDATA_PTR_IS_NULL_BUT_USERDATA_SIZE_IS_NOT;
    SFETCH_LOGITEM_REQUEST_USERDATA_SIZE_TOO_BIG                         :: REQUEST_USERDATA_SIZE_TOO_BIG;
    SFETCH_LOGITEM_CLAMPING_NUM_CHANNELS_TO_MAX_CHANNELS                 :: CLAMPING_NUM_CHANNELS_TO_MAX_CHANNELS;
    SFETCH_LOGITEM_REQUEST_POOL_EXHAUSTED                                :: REQUEST_POOL_EXHAUSTED;
}

/*
sfetch_logger_t

Used in sfetch_desc_t to provide a custom logging and error reporting
callback to sokol-fetch.
*/
sfetch_logger_t :: struct {
    func:      #type (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call;

    user_data: *void;
}
#run {
    instance: sfetch_logger_t;
    assert(((cast(*void)(*instance.func)) - cast(*void)(*instance)) == 0, "sfetch_logger_t.func has unexpected offset % instead of 0", ((cast(*void)(*instance.func)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_logger_t.func)) == 8, "sfetch_logger_t.func has unexpected size % instead of 8", size_of(type_of(sfetch_logger_t.func)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 8, "sfetch_logger_t.user_data has unexpected offset % instead of 8", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_logger_t.user_data)) == 8, "sfetch_logger_t.user_data has unexpected size % instead of 8", size_of(type_of(sfetch_logger_t.user_data)));
    assert(size_of(sfetch_logger_t) == 16, "sfetch_logger_t has size % instead of 16", size_of(sfetch_logger_t));
}

/*
sfetch_range_t

A pointer-size pair struct to pass memory ranges into and out of sokol-fetch.
When initialized from a value type (array or struct) you can use the
SFETCH_RANGE() helper macro to build an sfetch_range_t struct.
*/
sfetch_range_t :: struct {
    ptr:  *void;
    size: size_t;
}
#run {
    instance: sfetch_range_t;
    assert(((cast(*void)(*instance.ptr)) - cast(*void)(*instance)) == 0, "sfetch_range_t.ptr has unexpected offset % instead of 0", ((cast(*void)(*instance.ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_range_t.ptr)) == 8, "sfetch_range_t.ptr has unexpected size % instead of 8", size_of(type_of(sfetch_range_t.ptr)));
    assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 8, "sfetch_range_t.size has unexpected offset % instead of 8", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_range_t.size)) == 8, "sfetch_range_t.size has unexpected size % instead of 8", size_of(type_of(sfetch_range_t.size)));
    assert(size_of(sfetch_range_t) == 16, "sfetch_range_t has size % instead of 16", size_of(sfetch_range_t));
}

/*
sfetch_allocator_t

Used in sfetch_desc_t to provide custom memory-alloc and -free functions
to sokol_fetch.h. If memory management should be overridden, both the
alloc and free function must be provided (e.g. it's not valid to
override one function but not the other).
*/
sfetch_allocator_t :: struct {
    alloc:     #type (size: size_t, user_data: *void) -> *void #c_call;
    free:      #type (ptr: *void, user_data: *void) -> void #c_call;
    user_data: *void;
}
#run {
    instance: sfetch_allocator_t;
    assert(((cast(*void)(*instance.alloc)) - cast(*void)(*instance)) == 0, "sfetch_allocator_t.alloc has unexpected offset % instead of 0", ((cast(*void)(*instance.alloc)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_allocator_t.alloc)) == 8, "sfetch_allocator_t.alloc has unexpected size % instead of 8", size_of(type_of(sfetch_allocator_t.alloc)));
    assert(((cast(*void)(*instance.free)) - cast(*void)(*instance)) == 8, "sfetch_allocator_t.free has unexpected offset % instead of 8", ((cast(*void)(*instance.free)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_allocator_t.free)) == 8, "sfetch_allocator_t.free has unexpected size % instead of 8", size_of(type_of(sfetch_allocator_t.free)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 16, "sfetch_allocator_t.user_data has unexpected offset % instead of 16", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_allocator_t.user_data)) == 8, "sfetch_allocator_t.user_data has unexpected size % instead of 8", size_of(type_of(sfetch_allocator_t.user_data)));
    assert(size_of(sfetch_allocator_t) == 24, "sfetch_allocator_t has size % instead of 24", size_of(sfetch_allocator_t));
}

/* configuration values for sfetch_setup() */
sfetch_desc_t :: struct {
    max_requests: u32; // max number of active requests across all channels (default: 128)
    num_channels: u32; // number of channels to fetch requests in parallel (default: 1)
    num_lanes:    u32; // max number of requests active on the same channel (default: 1)
    allocator:    sfetch_allocator_t; // optional memory allocation overrides (default: malloc/free)
    logger:       sfetch_logger_t; // optional log function overrides (default: NO LOGGING!)
}
#run {
    instance: sfetch_desc_t;
    assert(((cast(*void)(*instance.max_requests)) - cast(*void)(*instance)) == 0, "sfetch_desc_t.max_requests has unexpected offset % instead of 0", ((cast(*void)(*instance.max_requests)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.max_requests)) == 4, "sfetch_desc_t.max_requests has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.max_requests)));
    assert(((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)) == 4, "sfetch_desc_t.num_channels has unexpected offset % instead of 4", ((cast(*void)(*instance.num_channels)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.num_channels)) == 4, "sfetch_desc_t.num_channels has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.num_channels)));
    assert(((cast(*void)(*instance.num_lanes)) - cast(*void)(*instance)) == 8, "sfetch_desc_t.num_lanes has unexpected offset % instead of 8", ((cast(*void)(*instance.num_lanes)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.num_lanes)) == 4, "sfetch_desc_t.num_lanes has unexpected size % instead of 4", size_of(type_of(sfetch_desc_t.num_lanes)));
    assert(((cast(*void)(*instance.allocator)) - cast(*void)(*instance)) == 16, "sfetch_desc_t.allocator has unexpected offset % instead of 16", ((cast(*void)(*instance.allocator)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.allocator)) == 24, "sfetch_desc_t.allocator has unexpected size % instead of 24", size_of(type_of(sfetch_desc_t.allocator)));
    assert(((cast(*void)(*instance.logger)) - cast(*void)(*instance)) == 40, "sfetch_desc_t.logger has unexpected offset % instead of 40", ((cast(*void)(*instance.logger)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_desc_t.logger)) == 16, "sfetch_desc_t.logger has unexpected size % instead of 16", size_of(type_of(sfetch_desc_t.logger)));
    assert(size_of(sfetch_desc_t) == 56, "sfetch_desc_t has size % instead of 56", size_of(sfetch_desc_t));
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
    handle:      sfetch_handle_t; // request handle this response belongs to
    dispatched:  bool; // true when request is in DISPATCHED state (lane has been assigned)
    fetched:     bool; // true when request is in FETCHED state (fetched data is available)
    paused:      bool; // request is currently in paused state
    finished:    bool; // this is the last response for this request
    failed:      bool; // request has failed (always set together with 'finished')
    cancelled:   bool; // request was cancelled (always set together with 'finished')
    error_code:  sfetch_error_t; // more detailed error code when failed is true
    channel:     u32; // the channel which processes this request
    lane:        u32; // the lane this request occupies on its channel
    path:        *u8; // the original filesystem path of the request
    user_data:   *void; // pointer to read/write user-data area
    data_offset: u32; // current offset of fetched data chunk in the overall file data
    data:        sfetch_range_t; // the fetched data as ptr/size pair (data.ptr == buffer.ptr, data.size <= buffer.size)
    buffer:      sfetch_range_t; // the user-provided buffer which holds the fetched data
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
    assert(((cast(*void)(*instance.data_offset)) - cast(*void)(*instance)) == 40, "sfetch_response_t.data_offset has unexpected offset % instead of 40", ((cast(*void)(*instance.data_offset)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.data_offset)) == 4, "sfetch_response_t.data_offset has unexpected size % instead of 4", size_of(type_of(sfetch_response_t.data_offset)));
    assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 48, "sfetch_response_t.data has unexpected offset % instead of 48", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.data)) == 16, "sfetch_response_t.data has unexpected size % instead of 16", size_of(type_of(sfetch_response_t.data)));
    assert(((cast(*void)(*instance.buffer)) - cast(*void)(*instance)) == 64, "sfetch_response_t.buffer has unexpected offset % instead of 64", ((cast(*void)(*instance.buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_response_t.buffer)) == 16, "sfetch_response_t.buffer has unexpected size % instead of 16", size_of(type_of(sfetch_response_t.buffer)));
    assert(size_of(sfetch_response_t) == 80, "sfetch_response_t has size % instead of 80", size_of(sfetch_response_t));
}

/* response callback function signature */
sfetch_callback_t :: #type (unknown0: *sfetch_response_t) -> void #c_call;

/* request parameters passed to sfetch_send() */
sfetch_request_t :: struct {
    channel:    u32; // index of channel this request is assigned to (default: 0)
    path:       *u8; // filesystem path or HTTP URL (required)
    callback:   sfetch_callback_t; // response callback function pointer (required)
    chunk_size: u32; // number of bytes to load per stream-block (optional)
    buffer:     sfetch_range_t; // a memory buffer where the data will be loaded into (optional)
    user_data:  sfetch_range_t; // ptr/size of a POD user data block which will be memcpy'd (optional)
}
#run {
    instance: sfetch_request_t;
    assert(((cast(*void)(*instance.channel)) - cast(*void)(*instance)) == 0, "sfetch_request_t.channel has unexpected offset % instead of 0", ((cast(*void)(*instance.channel)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.channel)) == 4, "sfetch_request_t.channel has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.channel)));
    assert(((cast(*void)(*instance.path)) - cast(*void)(*instance)) == 8, "sfetch_request_t.path has unexpected offset % instead of 8", ((cast(*void)(*instance.path)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.path)) == 8, "sfetch_request_t.path has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.path)));
    assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 16, "sfetch_request_t.callback has unexpected offset % instead of 16", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.callback)) == 8, "sfetch_request_t.callback has unexpected size % instead of 8", size_of(type_of(sfetch_request_t.callback)));
    assert(((cast(*void)(*instance.chunk_size)) - cast(*void)(*instance)) == 24, "sfetch_request_t.chunk_size has unexpected offset % instead of 24", ((cast(*void)(*instance.chunk_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.chunk_size)) == 4, "sfetch_request_t.chunk_size has unexpected size % instead of 4", size_of(type_of(sfetch_request_t.chunk_size)));
    assert(((cast(*void)(*instance.buffer)) - cast(*void)(*instance)) == 32, "sfetch_request_t.buffer has unexpected offset % instead of 32", ((cast(*void)(*instance.buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.buffer)) == 16, "sfetch_request_t.buffer has unexpected size % instead of 16", size_of(type_of(sfetch_request_t.buffer)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 48, "sfetch_request_t.user_data has unexpected offset % instead of 48", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sfetch_request_t.user_data)) == 16, "sfetch_request_t.user_data has unexpected size % instead of 16", size_of(type_of(sfetch_request_t.user_data)));
    assert(size_of(sfetch_request_t) == 64, "sfetch_request_t has size % instead of 64", size_of(sfetch_request_t));
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
sfetch_bind_buffer :: (h: sfetch_handle_t, buffer: sfetch_range_t) -> void #foreign sokol_fetch;

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

