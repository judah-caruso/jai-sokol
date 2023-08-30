// configuration values for sfetch_setup()
sfetch_desc_t :: struct {
    _start_canary : u32;
    max_requests  : u32; // max number of active requests across all channels, default is 128
    num_channels  : u32; // number of channels to fetch requests in parallel, default is 1
    num_lanes     : u32; // max number of requests active on the same channel, default is 1
    _end_canary   : u32;
}

// a request handle to identify an active fetch request, returned by sfetch_send()
sfetch_handle_t :: struct {
    id : u32;
}

// error codes
sfetch_error_t :: enum u32 {
    NO_ERROR;
    FILE_NOT_FOUND;
    NO_BUFFER;
    BUFFER_TOO_SMALL;
    UNEXPECTED_EOF;
    INVALID_HTTP_STATUS;
    CANCELLED;
}

// the response struct passed to the response callback
sfetch_response_t :: struct {
    handle         : sfetch_handle_t; // request handle this response belongs to
    dispatched     : bool;            // true when request is in DISPATCHED state (lane has been assigned)
    fetched        : bool;            // true when request is in FETCHED state (fetched data is available)
    paused         : bool;            // request is currently in paused state
    finished       : bool;            // this is the last response for this request
    failed         : bool;            // request has failed (always set together with 'finished')
    cancelled      : bool;            // request was cancelled (always set together with 'finished')
    error_code     : sfetch_error_t;  // more detailed error code when failed is true
    channel        : u32;             // the channel which processes this request
    lane           : u32;             // the lane this request occupies on its channel
    path           : u8;              // the original filesystem path of the request (FIXME: this is unsafe, wrap in API call?)
    user_data      : *void;           // pointer to read/write user-data area (FIXME: this is unsafe, wrap in API call?)
    fetched_offset : u32;             // current offset of fetched data chunk in file data
    fetched_size   : u32;             // size of fetched data chunk in number of bytes
    buffer_ptr     : *void;           // pointer to buffer with fetched data
    buffer_size    : u32;             // overall buffer size (may be >= than fetched_size!)
}

// request parameters passed to sfetch_send()
sfetch_request_t :: struct {
    _start_canary  : u32;
    channel        : u32;                          // index of channel this request is assigned to (default: 0)
    path           : *u8;                          // filesystem path or HTTP URL (required)
    callback       : (*sfetch_response_t) #c_call; // response callback function pointer (required)
    buffer_ptr     : *void;                        // buffer pointer where data will be loaded into (optional)
    buffer_size    : u32;                          // buffer size in number of bytes (optional)
    chunk_size     : u32;                          // number of bytes to load per stream-block (optional)
    user_data_ptr  : *void;                        // pointer to a POD user-data block which will be memcpy'd(!) (optional)
    user_data_size : u32;                          // size of user-data block (optional)
    _end_canary    : u32;
}

// setup sokol-fetch (can be called on multiple threads)
sfetch_setup              :: (desc: *sfetch_desc_t) #foreign sokol_fetch;
// discard a sokol-fetch context
sfetch_shutdown           :: ()                   #foreign sokol_fetch;
// return true if sokol-fetch has been setup
sfetch_valid              :: () -> bool           #foreign sokol_fetch;
// get the desc struct that was passed to sfetch_setup()
sfetch_desc               :: () -> sfetch_desc_t    #foreign sokol_fetch;
// return the max userdata size in number of bytes (SFETCH_MAX_USERDATA_UINT64 * sizeof(uint64_t))
sfetch_max_userdata_bytes :: () -> s32            #foreign sokol_fetch;
// return the value of the SFETCH_MAX_PATH implementation config value
sfetch_max_path           :: () -> s32            #foreign sokol_fetch;

// send a fetch-request, get handle to request back
sfetch_send         :: (request: *sfetch_request_t) -> sfetch_handle_t #foreign sokol_fetch;
// return true if a handle is valid *and* the request is alive
sfetch_handle_valid :: (h: sfetch_handle_t) -> bool                  #foreign sokol_fetch;
// do per-frame work, moves requests into and out of IO threads, and invokes response-callbacks
sfetch_dowork       :: ()                                          #foreign sokol_fetch;

// bind a data buffer to a request (request must not currently have a buffer bound, must be called from response callback
sfetch_bind_buffer   :: (h: sfetch_handle_t, buffer_ptr: *void, buffer_size: u32) #foreign sokol_fetch;
// clear the 'buffer binding' of a request, returns previous buffer pointer (can be 0), must be called from response callback
sfetch_unbind_buffer :: (h: sfetch_handle_t) -> *void                             #foreign sokol_fetch;
// cancel a request that's in flight (will call response callback with .cancelled + .finished)
sfetch_cancel        :: (h: sfetch_handle_t)                                      #foreign sokol_fetch;
// pause a request (will call response callback each frame with .paused)
sfetch_pause         :: (h: sfetch_handle_t)                                      #foreign sokol_fetch;
// continue a paused request
sfetch_continue      :: (h: sfetch_handle_t)                                      #foreign sokol_fetch;

#if OS == .WINDOWS {
    sokol_fetch :: #library,no_dll "win/sokol_fetch";
}
else #if OS == .MACOS {
    sokol_fetch :: #library,no_dll "mac/sokol_fetch";
}
else #if OS == .LINUX {
	sokol_fetch :: #library,no_dll "linux/sokol_fetch";
}
