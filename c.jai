// This file was generated by https://github.com/judah-caruso/C.
// It can be #loaded and used like the module version.
#scope_module;

c :: struct {
    CHAR                       :: #type u8;
    SHORT                      :: #type s16;
    INT                        :: #type s32;
    FLOAT                      :: #type float32;
    DOUBLE                     :: #type float64;
    SHORT_INT                  :: #type s16;
    LONG_LONG                  :: #type s64;
    LONG_LONG_INT              :: #type s64;
    UNSIGNED_CHAR              :: #type u8;
    UNSIGNED_SHORT             :: #type u16;
    UNSIGNED_SHORT_INT         :: #type u16;
    UNSIGNED                   :: #type u32;
    UNSIGNED_INT               :: #type u32;
    UNSIGNED_LONG_LONG         :: #type u64;
    UNSIGNED_LONG_LONG_INT     :: #type u64;
    SIGNED_CHAR                :: #type s8;
    SIGNED_SHORT               :: #type s16;
    SIGNED_SHORT_INT           :: #type s16;
    SIGNED                     :: #type s32;
    SIGNED_INT                 :: #type s32;
    SIGNED_LONG_LONG           :: #type s64;
    SIGNED_LONG_LONG_INT       :: #type s64;
    SIZE_T                     :: #type u64;
    INTPTR_T                   :: #type s64;
    UINTPTR_T                  :: #type u64;
    PTRDIFF_T                  :: #type u64;
    LONG_DOUBLE                :: #type float64;
    
    #if OS == .WINDOWS {
        LONG                   :: #type s32;
        UNSIGNED_LONG          :: #type u32;
        SIGNED_LONG            :: #type s32;
        WCHAR_T                :: #type u16;
    }
    else #if OS == .LINUX || OS == .MACOS {
        LONG                   :: #type s64;
        UNSIGNED_LONG          :: #type u64;
        SIGNED_LONG            :: #type s64;
        WCHAR_T                :: #type u32;
        SSIZE_T                :: #type s64;
    }
}
