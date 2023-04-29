//
// This file was auto-generated using the following command:
//
// jai generate.jai - make-lib
//



SOKOL_APP_INCLUDED :: 1;

/* misc constants */
SAPP_MAX :: enum u32 {
    TOUCHPOINTS  :: 8;
    MOUSEBUTTONS :: 3;
    KEYCODES     :: 512;
    ICONIMAGES   :: 8;

    SAPP_MAX_TOUCHPOINTS  :: TOUCHPOINTS;
    SAPP_MAX_MOUSEBUTTONS :: MOUSEBUTTONS;
    SAPP_MAX_KEYCODES     :: KEYCODES;
    SAPP_MAX_ICONIMAGES   :: ICONIMAGES;
}

/*
sapp_event_type

The type of event that's passed to the event handler callback
in the sapp_event.type field. These are not just "traditional"
input events, but also notify the application about state changes
or other user-invoked actions.
*/
sapp_event_type :: enum u32 {
    SAPP_EVENTTYPE_INVALID           :: 0;
    SAPP_EVENTTYPE_KEY_DOWN          :: 1;
    SAPP_EVENTTYPE_KEY_UP            :: 2;
    SAPP_EVENTTYPE_CHAR              :: 3;
    SAPP_EVENTTYPE_MOUSE_DOWN        :: 4;
    SAPP_EVENTTYPE_MOUSE_UP          :: 5;
    SAPP_EVENTTYPE_MOUSE_SCROLL      :: 6;
    SAPP_EVENTTYPE_MOUSE_MOVE        :: 7;
    SAPP_EVENTTYPE_MOUSE_ENTER       :: 8;
    SAPP_EVENTTYPE_MOUSE_LEAVE       :: 9;
    SAPP_EVENTTYPE_TOUCHES_BEGAN     :: 10;
    SAPP_EVENTTYPE_TOUCHES_MOVED     :: 11;
    SAPP_EVENTTYPE_TOUCHES_ENDED     :: 12;
    SAPP_EVENTTYPE_TOUCHES_CANCELLED :: 13;
    SAPP_EVENTTYPE_RESIZED           :: 14;
    SAPP_EVENTTYPE_ICONIFIED         :: 15;
    SAPP_EVENTTYPE_RESTORED          :: 16;
    SAPP_EVENTTYPE_FOCUSED           :: 17;
    SAPP_EVENTTYPE_UNFOCUSED         :: 18;
    SAPP_EVENTTYPE_SUSPENDED         :: 19;
    SAPP_EVENTTYPE_RESUMED           :: 20;
    SAPP_EVENTTYPE_QUIT_REQUESTED    :: 21;
    SAPP_EVENTTYPE_CLIPBOARD_PASTED  :: 22;
    SAPP_EVENTTYPE_FILES_DROPPED     :: 23;
    SAPP_EVENTTYPE_NUM               :: 24;
    SAPP_EVENTTYPE_FORCE_U32         :: 2147483647;

    _SAPP_EVENTTYPE_NUM       :: SAPP_EVENTTYPE_NUM;
    _SAPP_EVENTTYPE_FORCE_U32 :: SAPP_EVENTTYPE_FORCE_U32;
}

/*
sapp_keycode

The 'virtual keycode' of a KEY_DOWN or KEY_UP event in the
struct field sapp_event.key_code.

Note that the keycode values are identical with GLFW.
*/
sapp_keycode :: enum u32 {
    INVALID       :: 0;
    SPACE         :: 32;
    APOSTROPHE    :: 39;
    COMMA         :: 44;
    MINUS         :: 45;
    PERIOD        :: 46;
    SLASH         :: 47;
    _0            :: 48;
    _1            :: 49;
    _2            :: 50;
    _3            :: 51;
    _4            :: 52;
    _5            :: 53;
    _6            :: 54;
    _7            :: 55;
    _8            :: 56;
    _9            :: 57;
    SEMICOLON     :: 59;
    EQUAL         :: 61;
    A             :: 65;
    B             :: 66;
    C             :: 67;
    D             :: 68;
    E             :: 69;
    F             :: 70;
    G             :: 71;
    H             :: 72;
    I             :: 73;
    J             :: 74;
    K             :: 75;
    L             :: 76;
    M             :: 77;
    N             :: 78;
    O             :: 79;
    P             :: 80;
    Q             :: 81;
    R             :: 82;
    S             :: 83;
    T             :: 84;
    U             :: 85;
    V             :: 86;
    W             :: 87;
    X             :: 88;
    Y             :: 89;
    Z             :: 90;
    LEFT_BRACKET  :: 91;
    BACKSLASH     :: 92;
    RIGHT_BRACKET :: 93;
    GRAVE_ACCENT  :: 96;
    WORLD_1       :: 161;
    WORLD_2       :: 162;
    ESCAPE        :: 256;
    ENTER         :: 257;
    TAB           :: 258;
    BACKSPACE     :: 259;
    INSERT        :: 260;
    DELETE        :: 261;
    RIGHT         :: 262;
    LEFT          :: 263;
    DOWN          :: 264;
    UP            :: 265;
    PAGE_UP       :: 266;
    PAGE_DOWN     :: 267;
    HOME          :: 268;
    END           :: 269;
    CAPS_LOCK     :: 280;
    SCROLL_LOCK   :: 281;
    NUM_LOCK      :: 282;
    PRINT_SCREEN  :: 283;
    PAUSE         :: 284;
    F1            :: 290;
    F2            :: 291;
    F3            :: 292;
    F4            :: 293;
    F5            :: 294;
    F6            :: 295;
    F7            :: 296;
    F8            :: 297;
    F9            :: 298;
    F10           :: 299;
    F11           :: 300;
    F12           :: 301;
    F13           :: 302;
    F14           :: 303;
    F15           :: 304;
    F16           :: 305;
    F17           :: 306;
    F18           :: 307;
    F19           :: 308;
    F20           :: 309;
    F21           :: 310;
    F22           :: 311;
    F23           :: 312;
    F24           :: 313;
    F25           :: 314;
    KP_0          :: 320;
    KP_1          :: 321;
    KP_2          :: 322;
    KP_3          :: 323;
    KP_4          :: 324;
    KP_5          :: 325;
    KP_6          :: 326;
    KP_7          :: 327;
    KP_8          :: 328;
    KP_9          :: 329;
    KP_DECIMAL    :: 330;
    KP_DIVIDE     :: 331;
    KP_MULTIPLY   :: 332;
    KP_SUBTRACT   :: 333;
    KP_ADD        :: 334;
    KP_ENTER      :: 335;
    KP_EQUAL      :: 336;
    LEFT_SHIFT    :: 340;
    LEFT_CONTROL  :: 341;
    LEFT_ALT      :: 342;
    LEFT_SUPER    :: 343;
    RIGHT_SHIFT   :: 344;
    RIGHT_CONTROL :: 345;
    RIGHT_ALT     :: 346;
    RIGHT_SUPER   :: 347;
    MENU          :: 348;

    SAPP_KEYCODE_INVALID       :: INVALID;
    SAPP_KEYCODE_SPACE         :: SPACE;
    SAPP_KEYCODE_APOSTROPHE    :: APOSTROPHE;
    SAPP_KEYCODE_COMMA         :: COMMA;
    SAPP_KEYCODE_MINUS         :: MINUS;
    SAPP_KEYCODE_PERIOD        :: PERIOD;
    SAPP_KEYCODE_SLASH         :: SLASH;
    SAPP_KEYCODE_0             :: _0;
    SAPP_KEYCODE_1             :: _1;
    SAPP_KEYCODE_2             :: _2;
    SAPP_KEYCODE_3             :: _3;
    SAPP_KEYCODE_4             :: _4;
    SAPP_KEYCODE_5             :: _5;
    SAPP_KEYCODE_6             :: _6;
    SAPP_KEYCODE_7             :: _7;
    SAPP_KEYCODE_8             :: _8;
    SAPP_KEYCODE_9             :: _9;
    SAPP_KEYCODE_SEMICOLON     :: SEMICOLON;
    SAPP_KEYCODE_EQUAL         :: EQUAL;
    SAPP_KEYCODE_A             :: A;
    SAPP_KEYCODE_B             :: B;
    SAPP_KEYCODE_C             :: C;
    SAPP_KEYCODE_D             :: D;
    SAPP_KEYCODE_E             :: E;
    SAPP_KEYCODE_F             :: F;
    SAPP_KEYCODE_G             :: G;
    SAPP_KEYCODE_H             :: H;
    SAPP_KEYCODE_I             :: I;
    SAPP_KEYCODE_J             :: J;
    SAPP_KEYCODE_K             :: K;
    SAPP_KEYCODE_L             :: L;
    SAPP_KEYCODE_M             :: M;
    SAPP_KEYCODE_N             :: N;
    SAPP_KEYCODE_O             :: O;
    SAPP_KEYCODE_P             :: P;
    SAPP_KEYCODE_Q             :: Q;
    SAPP_KEYCODE_R             :: R;
    SAPP_KEYCODE_S             :: S;
    SAPP_KEYCODE_T             :: T;
    SAPP_KEYCODE_U             :: U;
    SAPP_KEYCODE_V             :: V;
    SAPP_KEYCODE_W             :: W;
    SAPP_KEYCODE_X             :: X;
    SAPP_KEYCODE_Y             :: Y;
    SAPP_KEYCODE_Z             :: Z;
    SAPP_KEYCODE_LEFT_BRACKET  :: LEFT_BRACKET;
    SAPP_KEYCODE_BACKSLASH     :: BACKSLASH;
    SAPP_KEYCODE_RIGHT_BRACKET :: RIGHT_BRACKET;
    SAPP_KEYCODE_GRAVE_ACCENT  :: GRAVE_ACCENT;
    SAPP_KEYCODE_WORLD_1       :: WORLD_1;
    SAPP_KEYCODE_WORLD_2       :: WORLD_2;
    SAPP_KEYCODE_ESCAPE        :: ESCAPE;
    SAPP_KEYCODE_ENTER         :: ENTER;
    SAPP_KEYCODE_TAB           :: TAB;
    SAPP_KEYCODE_BACKSPACE     :: BACKSPACE;
    SAPP_KEYCODE_INSERT        :: INSERT;
    SAPP_KEYCODE_DELETE        :: DELETE;
    SAPP_KEYCODE_RIGHT         :: RIGHT;
    SAPP_KEYCODE_LEFT          :: LEFT;
    SAPP_KEYCODE_DOWN          :: DOWN;
    SAPP_KEYCODE_UP            :: UP;
    SAPP_KEYCODE_PAGE_UP       :: PAGE_UP;
    SAPP_KEYCODE_PAGE_DOWN     :: PAGE_DOWN;
    SAPP_KEYCODE_HOME          :: HOME;
    SAPP_KEYCODE_END           :: END;
    SAPP_KEYCODE_CAPS_LOCK     :: CAPS_LOCK;
    SAPP_KEYCODE_SCROLL_LOCK   :: SCROLL_LOCK;
    SAPP_KEYCODE_NUM_LOCK      :: NUM_LOCK;
    SAPP_KEYCODE_PRINT_SCREEN  :: PRINT_SCREEN;
    SAPP_KEYCODE_PAUSE         :: PAUSE;
    SAPP_KEYCODE_F1            :: F1;
    SAPP_KEYCODE_F2            :: F2;
    SAPP_KEYCODE_F3            :: F3;
    SAPP_KEYCODE_F4            :: F4;
    SAPP_KEYCODE_F5            :: F5;
    SAPP_KEYCODE_F6            :: F6;
    SAPP_KEYCODE_F7            :: F7;
    SAPP_KEYCODE_F8            :: F8;
    SAPP_KEYCODE_F9            :: F9;
    SAPP_KEYCODE_F10           :: F10;
    SAPP_KEYCODE_F11           :: F11;
    SAPP_KEYCODE_F12           :: F12;
    SAPP_KEYCODE_F13           :: F13;
    SAPP_KEYCODE_F14           :: F14;
    SAPP_KEYCODE_F15           :: F15;
    SAPP_KEYCODE_F16           :: F16;
    SAPP_KEYCODE_F17           :: F17;
    SAPP_KEYCODE_F18           :: F18;
    SAPP_KEYCODE_F19           :: F19;
    SAPP_KEYCODE_F20           :: F20;
    SAPP_KEYCODE_F21           :: F21;
    SAPP_KEYCODE_F22           :: F22;
    SAPP_KEYCODE_F23           :: F23;
    SAPP_KEYCODE_F24           :: F24;
    SAPP_KEYCODE_F25           :: F25;
    SAPP_KEYCODE_KP_0          :: KP_0;
    SAPP_KEYCODE_KP_1          :: KP_1;
    SAPP_KEYCODE_KP_2          :: KP_2;
    SAPP_KEYCODE_KP_3          :: KP_3;
    SAPP_KEYCODE_KP_4          :: KP_4;
    SAPP_KEYCODE_KP_5          :: KP_5;
    SAPP_KEYCODE_KP_6          :: KP_6;
    SAPP_KEYCODE_KP_7          :: KP_7;
    SAPP_KEYCODE_KP_8          :: KP_8;
    SAPP_KEYCODE_KP_9          :: KP_9;
    SAPP_KEYCODE_KP_DECIMAL    :: KP_DECIMAL;
    SAPP_KEYCODE_KP_DIVIDE     :: KP_DIVIDE;
    SAPP_KEYCODE_KP_MULTIPLY   :: KP_MULTIPLY;
    SAPP_KEYCODE_KP_SUBTRACT   :: KP_SUBTRACT;
    SAPP_KEYCODE_KP_ADD        :: KP_ADD;
    SAPP_KEYCODE_KP_ENTER      :: KP_ENTER;
    SAPP_KEYCODE_KP_EQUAL      :: KP_EQUAL;
    SAPP_KEYCODE_LEFT_SHIFT    :: LEFT_SHIFT;
    SAPP_KEYCODE_LEFT_CONTROL  :: LEFT_CONTROL;
    SAPP_KEYCODE_LEFT_ALT      :: LEFT_ALT;
    SAPP_KEYCODE_LEFT_SUPER    :: LEFT_SUPER;
    SAPP_KEYCODE_RIGHT_SHIFT   :: RIGHT_SHIFT;
    SAPP_KEYCODE_RIGHT_CONTROL :: RIGHT_CONTROL;
    SAPP_KEYCODE_RIGHT_ALT     :: RIGHT_ALT;
    SAPP_KEYCODE_RIGHT_SUPER   :: RIGHT_SUPER;
    SAPP_KEYCODE_MENU          :: MENU;
}

/*
Android specific 'tool type' enum for touch events. This lets the
application check what type of input device was used for
touch events.

NOTE: the values must remain in sync with the corresponding
Android SDK type, so don't change those.

See https://developer.android.com/reference/android/view/MotionEvent#TOOL_TYPE_UNKNOWN
*/
sapp_android_tooltype :: enum u32 {
    UNKNOWN :: 0;
    FINGER  :: 1;
    STYLUS  :: 2;
    MOUSE   :: 3;

    SAPP_ANDROIDTOOLTYPE_UNKNOWN :: UNKNOWN;
    SAPP_ANDROIDTOOLTYPE_FINGER  :: FINGER;
    SAPP_ANDROIDTOOLTYPE_STYLUS  :: STYLUS;
    SAPP_ANDROIDTOOLTYPE_MOUSE   :: MOUSE;
}

/*
sapp_touchpoint

Describes a single touchpoint in a multitouch event (TOUCHES_BEGAN,
TOUCHES_MOVED, TOUCHES_ENDED).

Touch points are stored in the nested array sapp_event.touches[],
and the number of touches is stored in sapp_event.num_touches.
*/
sapp_touchpoint :: struct {
    identifier:       u64;
    pos_x:            float;
    pos_y:            float;
    android_tooltype: sapp_android_tooltype; // only valid on Android
    changed:          bool;
}
#run {
    instance: sapp_touchpoint;
    assert(((cast(*void)(*instance.identifier)) - cast(*void)(*instance)) == 0, "sapp_touchpoint.identifier has unexpected offset % instead of 0", ((cast(*void)(*instance.identifier)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_touchpoint.identifier)) == 8, "sapp_touchpoint.identifier has unexpected size % instead of 8", size_of(type_of(sapp_touchpoint.identifier)));
    assert(((cast(*void)(*instance.pos_x)) - cast(*void)(*instance)) == 8, "sapp_touchpoint.pos_x has unexpected offset % instead of 8", ((cast(*void)(*instance.pos_x)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_touchpoint.pos_x)) == 4, "sapp_touchpoint.pos_x has unexpected size % instead of 4", size_of(type_of(sapp_touchpoint.pos_x)));
    assert(((cast(*void)(*instance.pos_y)) - cast(*void)(*instance)) == 12, "sapp_touchpoint.pos_y has unexpected offset % instead of 12", ((cast(*void)(*instance.pos_y)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_touchpoint.pos_y)) == 4, "sapp_touchpoint.pos_y has unexpected size % instead of 4", size_of(type_of(sapp_touchpoint.pos_y)));
    assert(((cast(*void)(*instance.android_tooltype)) - cast(*void)(*instance)) == 16, "sapp_touchpoint.android_tooltype has unexpected offset % instead of 16", ((cast(*void)(*instance.android_tooltype)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_touchpoint.android_tooltype)) == 4, "sapp_touchpoint.android_tooltype has unexpected size % instead of 4", size_of(type_of(sapp_touchpoint.android_tooltype)));
    assert(((cast(*void)(*instance.changed)) - cast(*void)(*instance)) == 20, "sapp_touchpoint.changed has unexpected offset % instead of 20", ((cast(*void)(*instance.changed)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_touchpoint.changed)) == 1, "sapp_touchpoint.changed has unexpected size % instead of 1", size_of(type_of(sapp_touchpoint.changed)));
    assert(size_of(sapp_touchpoint) == 24, "sapp_touchpoint has size % instead of 24", size_of(sapp_touchpoint));
}

/*
sapp_mousebutton

The currently pressed mouse button in the events MOUSE_DOWN
and MOUSE_UP, stored in the struct field sapp_event.mouse_button.
*/
sapp_mousebutton :: enum u32 {
    LEFT    :: 0;
    RIGHT   :: 1;
    MIDDLE  :: 2;
    INVALID :: 256;

    SAPP_MOUSEBUTTON_LEFT    :: LEFT;
    SAPP_MOUSEBUTTON_RIGHT   :: RIGHT;
    SAPP_MOUSEBUTTON_MIDDLE  :: MIDDLE;
    SAPP_MOUSEBUTTON_INVALID :: INVALID;
}

/*
These are currently pressed modifier keys (and mouse buttons) which are
passed in the event struct field sapp_event.modifiers.
*/
SAPP_MODIFIER :: enum u32 {
    SHIFT :: 1;
    CTRL  :: 2;
    ALT   :: 4;
    SUPER :: 8;
    LMB   :: 256;
    RMB   :: 512;
    MMB   :: 1024;

    SAPP_MODIFIER_SHIFT :: SHIFT;
    SAPP_MODIFIER_CTRL  :: CTRL;
    SAPP_MODIFIER_ALT   :: ALT;
    SAPP_MODIFIER_SUPER :: SUPER;
    SAPP_MODIFIER_LMB   :: LMB;
    SAPP_MODIFIER_RMB   :: RMB;
    SAPP_MODIFIER_MMB   :: MMB;
}

/*
sapp_event

This is an all-in-one event struct passed to the event handler
user callback function. Note that it depends on the event
type what struct fields actually contain useful values, so you
should first check the event type before reading other struct
fields.
*/
sapp_event :: struct {
    frame_count:        u64; // current frame counter, always valid, useful for checking if two events were issued in the same frame
    type:               sapp_event_type; // the event type, always valid
    key_code:           sapp_keycode; // the virtual key code, only valid in KEY_UP, KEY_DOWN
    char_code:          u32; // the UTF-32 character code, only valid in CHAR events
    key_repeat:         bool; // true if this is a key-repeat event, valid in KEY_UP, KEY_DOWN and CHAR
    modifiers:          u32; // current modifier keys, valid in all key-, char- and mouse-events
    mouse_button:       sapp_mousebutton; // mouse button that was pressed or released, valid in MOUSE_DOWN, MOUSE_UP
    mouse_x:            float; // current horizontal mouse position in pixels, always valid except during mouse lock
    mouse_y:            float; // current vertical mouse position in pixels, always valid except during mouse lock
    mouse_dx:           float; // relative horizontal mouse movement since last frame, always valid
    mouse_dy:           float; // relative vertical mouse movement since last frame, always valid
    scroll_x:           float; // horizontal mouse wheel scroll distance, valid in MOUSE_SCROLL events
    scroll_y:           float; // vertical mouse wheel scroll distance, valid in MOUSE_SCROLL events
    num_touches:        s32; // number of valid items in the touches[] array
    touches:            [8] sapp_touchpoint; // current touch points, valid in TOUCHES_BEGIN, TOUCHES_MOVED, TOUCHES_ENDED
    window_width:       s32; // current window- and framebuffer sizes in pixels, always valid
    window_height:      s32;
    framebuffer_width:  s32; // = window_width * dpi_scale
    framebuffer_height: s32; // = window_height * dpi_scale
}
#run {
    instance: sapp_event;
    assert(((cast(*void)(*instance.frame_count)) - cast(*void)(*instance)) == 0, "sapp_event.frame_count has unexpected offset % instead of 0", ((cast(*void)(*instance.frame_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.frame_count)) == 8, "sapp_event.frame_count has unexpected size % instead of 8", size_of(type_of(sapp_event.frame_count)));
    assert(((cast(*void)(*instance.type)) - cast(*void)(*instance)) == 8, "sapp_event.type has unexpected offset % instead of 8", ((cast(*void)(*instance.type)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.type)) == 4, "sapp_event.type has unexpected size % instead of 4", size_of(type_of(sapp_event.type)));
    assert(((cast(*void)(*instance.key_code)) - cast(*void)(*instance)) == 12, "sapp_event.key_code has unexpected offset % instead of 12", ((cast(*void)(*instance.key_code)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.key_code)) == 4, "sapp_event.key_code has unexpected size % instead of 4", size_of(type_of(sapp_event.key_code)));
    assert(((cast(*void)(*instance.char_code)) - cast(*void)(*instance)) == 16, "sapp_event.char_code has unexpected offset % instead of 16", ((cast(*void)(*instance.char_code)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.char_code)) == 4, "sapp_event.char_code has unexpected size % instead of 4", size_of(type_of(sapp_event.char_code)));
    assert(((cast(*void)(*instance.key_repeat)) - cast(*void)(*instance)) == 20, "sapp_event.key_repeat has unexpected offset % instead of 20", ((cast(*void)(*instance.key_repeat)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.key_repeat)) == 1, "sapp_event.key_repeat has unexpected size % instead of 1", size_of(type_of(sapp_event.key_repeat)));
    assert(((cast(*void)(*instance.modifiers)) - cast(*void)(*instance)) == 24, "sapp_event.modifiers has unexpected offset % instead of 24", ((cast(*void)(*instance.modifiers)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.modifiers)) == 4, "sapp_event.modifiers has unexpected size % instead of 4", size_of(type_of(sapp_event.modifiers)));
    assert(((cast(*void)(*instance.mouse_button)) - cast(*void)(*instance)) == 28, "sapp_event.mouse_button has unexpected offset % instead of 28", ((cast(*void)(*instance.mouse_button)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.mouse_button)) == 4, "sapp_event.mouse_button has unexpected size % instead of 4", size_of(type_of(sapp_event.mouse_button)));
    assert(((cast(*void)(*instance.mouse_x)) - cast(*void)(*instance)) == 32, "sapp_event.mouse_x has unexpected offset % instead of 32", ((cast(*void)(*instance.mouse_x)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.mouse_x)) == 4, "sapp_event.mouse_x has unexpected size % instead of 4", size_of(type_of(sapp_event.mouse_x)));
    assert(((cast(*void)(*instance.mouse_y)) - cast(*void)(*instance)) == 36, "sapp_event.mouse_y has unexpected offset % instead of 36", ((cast(*void)(*instance.mouse_y)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.mouse_y)) == 4, "sapp_event.mouse_y has unexpected size % instead of 4", size_of(type_of(sapp_event.mouse_y)));
    assert(((cast(*void)(*instance.mouse_dx)) - cast(*void)(*instance)) == 40, "sapp_event.mouse_dx has unexpected offset % instead of 40", ((cast(*void)(*instance.mouse_dx)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.mouse_dx)) == 4, "sapp_event.mouse_dx has unexpected size % instead of 4", size_of(type_of(sapp_event.mouse_dx)));
    assert(((cast(*void)(*instance.mouse_dy)) - cast(*void)(*instance)) == 44, "sapp_event.mouse_dy has unexpected offset % instead of 44", ((cast(*void)(*instance.mouse_dy)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.mouse_dy)) == 4, "sapp_event.mouse_dy has unexpected size % instead of 4", size_of(type_of(sapp_event.mouse_dy)));
    assert(((cast(*void)(*instance.scroll_x)) - cast(*void)(*instance)) == 48, "sapp_event.scroll_x has unexpected offset % instead of 48", ((cast(*void)(*instance.scroll_x)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.scroll_x)) == 4, "sapp_event.scroll_x has unexpected size % instead of 4", size_of(type_of(sapp_event.scroll_x)));
    assert(((cast(*void)(*instance.scroll_y)) - cast(*void)(*instance)) == 52, "sapp_event.scroll_y has unexpected offset % instead of 52", ((cast(*void)(*instance.scroll_y)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.scroll_y)) == 4, "sapp_event.scroll_y has unexpected size % instead of 4", size_of(type_of(sapp_event.scroll_y)));
    assert(((cast(*void)(*instance.num_touches)) - cast(*void)(*instance)) == 56, "sapp_event.num_touches has unexpected offset % instead of 56", ((cast(*void)(*instance.num_touches)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.num_touches)) == 4, "sapp_event.num_touches has unexpected size % instead of 4", size_of(type_of(sapp_event.num_touches)));
    assert(((cast(*void)(*instance.touches)) - cast(*void)(*instance)) == 64, "sapp_event.touches has unexpected offset % instead of 64", ((cast(*void)(*instance.touches)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.touches)) == 192, "sapp_event.touches has unexpected size % instead of 192", size_of(type_of(sapp_event.touches)));
    assert(((cast(*void)(*instance.window_width)) - cast(*void)(*instance)) == 256, "sapp_event.window_width has unexpected offset % instead of 256", ((cast(*void)(*instance.window_width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.window_width)) == 4, "sapp_event.window_width has unexpected size % instead of 4", size_of(type_of(sapp_event.window_width)));
    assert(((cast(*void)(*instance.window_height)) - cast(*void)(*instance)) == 260, "sapp_event.window_height has unexpected offset % instead of 260", ((cast(*void)(*instance.window_height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.window_height)) == 4, "sapp_event.window_height has unexpected size % instead of 4", size_of(type_of(sapp_event.window_height)));
    assert(((cast(*void)(*instance.framebuffer_width)) - cast(*void)(*instance)) == 264, "sapp_event.framebuffer_width has unexpected offset % instead of 264", ((cast(*void)(*instance.framebuffer_width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.framebuffer_width)) == 4, "sapp_event.framebuffer_width has unexpected size % instead of 4", size_of(type_of(sapp_event.framebuffer_width)));
    assert(((cast(*void)(*instance.framebuffer_height)) - cast(*void)(*instance)) == 268, "sapp_event.framebuffer_height has unexpected offset % instead of 268", ((cast(*void)(*instance.framebuffer_height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_event.framebuffer_height)) == 4, "sapp_event.framebuffer_height has unexpected size % instead of 4", size_of(type_of(sapp_event.framebuffer_height)));
    assert(size_of(sapp_event) == 272, "sapp_event has size % instead of 272", size_of(sapp_event));
}

/*
sg_range

A general pointer/size-pair struct and constructor macros for passing binary blobs
into sokol_app.h.
*/
sapp_range :: struct {
    ptr:  *void;
    size: size_t;
}
#run {
    instance: sapp_range;
    assert(((cast(*void)(*instance.ptr)) - cast(*void)(*instance)) == 0, "sapp_range.ptr has unexpected offset % instead of 0", ((cast(*void)(*instance.ptr)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_range.ptr)) == 8, "sapp_range.ptr has unexpected size % instead of 8", size_of(type_of(sapp_range.ptr)));
    assert(((cast(*void)(*instance.size)) - cast(*void)(*instance)) == 8, "sapp_range.size has unexpected offset % instead of 8", ((cast(*void)(*instance.size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_range.size)) == 8, "sapp_range.size has unexpected size % instead of 8", size_of(type_of(sapp_range.size)));
    assert(size_of(sapp_range) == 16, "sapp_range has size % instead of 16", size_of(sapp_range));
}

/*
sapp_image_desc

This is used to describe image data to sokol_app.h (at first, window
icons, later maybe cursor images).

Note that the actual image pixel format depends on the use case:

- window icon pixels are RGBA8
- cursor images are ??? (FIXME)
*/
sapp_image_desc :: struct {
    width:  s32;
    height: s32;
    pixels: sapp_range;
}
#run {
    instance: sapp_image_desc;
    assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 0, "sapp_image_desc.width has unexpected offset % instead of 0", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_image_desc.width)) == 4, "sapp_image_desc.width has unexpected size % instead of 4", size_of(type_of(sapp_image_desc.width)));
    assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 4, "sapp_image_desc.height has unexpected offset % instead of 4", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_image_desc.height)) == 4, "sapp_image_desc.height has unexpected size % instead of 4", size_of(type_of(sapp_image_desc.height)));
    assert(((cast(*void)(*instance.pixels)) - cast(*void)(*instance)) == 8, "sapp_image_desc.pixels has unexpected offset % instead of 8", ((cast(*void)(*instance.pixels)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_image_desc.pixels)) == 16, "sapp_image_desc.pixels has unexpected size % instead of 16", size_of(type_of(sapp_image_desc.pixels)));
    assert(size_of(sapp_image_desc) == 24, "sapp_image_desc has size % instead of 24", size_of(sapp_image_desc));
}

/*
sapp_icon_desc

An icon description structure for use in sapp_desc.icon and
sapp_set_icon().

When setting a custom image, the application can provide a number of
candidates differing in size, and sokol_app.h will pick the image(s)
closest to the size expected by the platform's window system.

To set sokol-app's default icon, set .sokol_default to true.

Otherwise provide candidate images of different sizes in the
images[] array.

If both the sokol_default flag is set to true, any image candidates
will be ignored and the sokol_app.h default icon will be set.
*/
sapp_icon_desc :: struct {
    sokol_default: bool;
    images:        [8] sapp_image_desc;
}
#run {
    instance: sapp_icon_desc;
    assert(((cast(*void)(*instance.sokol_default)) - cast(*void)(*instance)) == 0, "sapp_icon_desc.sokol_default has unexpected offset % instead of 0", ((cast(*void)(*instance.sokol_default)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_icon_desc.sokol_default)) == 1, "sapp_icon_desc.sokol_default has unexpected size % instead of 1", size_of(type_of(sapp_icon_desc.sokol_default)));
    assert(((cast(*void)(*instance.images)) - cast(*void)(*instance)) == 8, "sapp_icon_desc.images has unexpected offset % instead of 8", ((cast(*void)(*instance.images)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_icon_desc.images)) == 192, "sapp_icon_desc.images has unexpected size % instead of 192", size_of(type_of(sapp_icon_desc.images)));
    assert(size_of(sapp_icon_desc) == 200, "sapp_icon_desc has size % instead of 200", size_of(sapp_icon_desc));
}

/*
sapp_allocator

Used in sapp_desc to provide custom memory-alloc and -free functions
to sokol_app.h. If memory management should be overridden, both the
alloc and free function must be provided (e.g. it's not valid to
override one function but not the other).
*/
sapp_allocator :: struct {
    alloc:     #type (size: size_t, user_data: *void) -> *void #c_call;
    free:      #type (ptr: *void, user_data: *void) -> void #c_call;
    user_data: *void;
}
#run {
    instance: sapp_allocator;
    assert(((cast(*void)(*instance.alloc)) - cast(*void)(*instance)) == 0, "sapp_allocator.alloc has unexpected offset % instead of 0", ((cast(*void)(*instance.alloc)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_allocator.alloc)) == 8, "sapp_allocator.alloc has unexpected size % instead of 8", size_of(type_of(sapp_allocator.alloc)));
    assert(((cast(*void)(*instance.free)) - cast(*void)(*instance)) == 8, "sapp_allocator.free has unexpected offset % instead of 8", ((cast(*void)(*instance.free)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_allocator.free)) == 8, "sapp_allocator.free has unexpected size % instead of 8", size_of(type_of(sapp_allocator.free)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 16, "sapp_allocator.user_data has unexpected offset % instead of 16", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_allocator.user_data)) == 8, "sapp_allocator.user_data has unexpected size % instead of 8", size_of(type_of(sapp_allocator.user_data)));
    assert(size_of(sapp_allocator) == 24, "sapp_allocator has size % instead of 24", size_of(sapp_allocator));
}

sapp_log_item :: enum u32 {
    OK                                                        :: 0;
    MALLOC_FAILED                                             :: 1;
    MACOS_INVALID_NSOPENGL_PROFILE                            :: 2;
    WIN32_LOAD_OPENGL32_DLL_FAILED                            :: 3;
    WIN32_CREATE_HELPER_WINDOW_FAILED                         :: 4;
    WIN32_HELPER_WINDOW_GETDC_FAILED                          :: 5;
    WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED                :: 6;
    WIN32_CREATE_DUMMY_CONTEXT_FAILED                         :: 7;
    WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED                   :: 8;
    WIN32_GET_PIXELFORMAT_ATTRIB_FAILED                       :: 9;
    WIN32_WGL_FIND_PIXELFORMAT_FAILED                         :: 10;
    WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED                     :: 11;
    WIN32_WGL_SET_PIXELFORMAT_FAILED                          :: 12;
    WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED                     :: 13;
    WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED             :: 14;
    WIN32_WGL_OPENGL_3_2_NOT_SUPPORTED                        :: 15;
    WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED                    :: 16;
    WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT                     :: 17;
    WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER             :: 18;
    WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED :: 19;
    WIN32_D3D11_GET_IDXGIFACTORY_FAILED                       :: 20;
    WIN32_D3D11_GET_IDXGIADAPTER_FAILED                       :: 21;
    WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED           :: 22;
    WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK        :: 23;
    WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK      :: 24;
    WIN32_GET_RAW_INPUT_DATA_FAILED                           :: 25;
    LINUX_GLX_LOAD_LIBGL_FAILED                               :: 26;
    LINUX_GLX_LOAD_ENTRY_POINTS_FAILED                        :: 27;
    LINUX_GLX_EXTENSION_NOT_FOUND                             :: 28;
    LINUX_GLX_QUERY_VERSION_FAILED                            :: 29;
    LINUX_GLX_VERSION_TOO_LOW                                 :: 30;
    LINUX_GLX_NO_GLXFBCONFIGS                                 :: 31;
    LINUX_GLX_NO_SUITABLE_GLXFBCONFIG                         :: 32;
    LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED                 :: 33;
    LINUX_GLX_REQUIRED_EXTENSIONS_MISSING                     :: 34;
    LINUX_GLX_CREATE_CONTEXT_FAILED                           :: 35;
    LINUX_GLX_CREATE_WINDOW_FAILED                            :: 36;
    LINUX_X11_CREATE_WINDOW_FAILED                            :: 37;
    LINUX_EGL_BIND_OPENGL_API_FAILED                          :: 38;
    LINUX_EGL_BIND_OPENGL_ES_API_FAILED                       :: 39;
    LINUX_EGL_GET_DISPLAY_FAILED                              :: 40;
    LINUX_EGL_INITIALIZE_FAILED                               :: 41;
    LINUX_EGL_NO_CONFIGS                                      :: 42;
    LINUX_EGL_NO_NATIVE_VISUAL                                :: 43;
    LINUX_EGL_GET_VISUAL_INFO_FAILED                          :: 44;
    LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED                    :: 45;
    LINUX_EGL_CREATE_CONTEXT_FAILED                           :: 46;
    LINUX_EGL_MAKE_CURRENT_FAILED                             :: 47;
    LINUX_X11_OPEN_DISPLAY_FAILED                             :: 48;
    LINUX_X11_QUERY_SYSTEM_DPI_FAILED                         :: 49;
    LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME                   :: 50;
    ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB                  :: 51;
    ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB                   :: 52;
    ANDROID_READ_MSG_FAILED                                   :: 53;
    ANDROID_WRITE_MSG_FAILED                                  :: 54;
    ANDROID_MSG_CREATE                                        :: 55;
    ANDROID_MSG_RESUME                                        :: 56;
    ANDROID_MSG_PAUSE                                         :: 57;
    ANDROID_MSG_FOCUS                                         :: 58;
    ANDROID_MSG_NO_FOCUS                                      :: 59;
    ANDROID_MSG_SET_NATIVE_WINDOW                             :: 60;
    ANDROID_MSG_SET_INPUT_QUEUE                               :: 61;
    ANDROID_MSG_DESTROY                                       :: 62;
    ANDROID_UNKNOWN_MSG                                       :: 63;
    ANDROID_LOOP_THREAD_STARTED                               :: 64;
    ANDROID_LOOP_THREAD_DONE                                  :: 65;
    ANDROID_NATIVE_ACTIVITY_ONSTART                           :: 66;
    ANDROID_NATIVE_ACTIVITY_ONRESUME                          :: 67;
    ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE               :: 68;
    ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED              :: 69;
    ANDROID_NATIVE_ACTIVITY_ONPAUSE                           :: 70;
    ANDROID_NATIVE_ACTIVITY_ONSTOP                            :: 71;
    ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED             :: 72;
    ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED           :: 73;
    ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED               :: 74;
    ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED             :: 75;
    ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED            :: 76;
    ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY                       :: 77;
    ANDROID_NATIVE_ACTIVITY_ONDESTROY                         :: 78;
    ANDROID_NATIVE_ACTIVITY_DONE                              :: 79;
    ANDROID_NATIVE_ACTIVITY_ONCREATE                          :: 80;
    ANDROID_CREATE_THREAD_PIPE_FAILED                         :: 81;
    ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS                    :: 82;
    IMAGE_DATA_SIZE_MISMATCH                                  :: 83;
    DROPPED_FILE_PATH_TOO_LONG                                :: 84;
    CLIPBOARD_STRING_TOO_BIG                                  :: 85;
    SAPP_LOGITEM_OK                                                        :: OK;
    SAPP_LOGITEM_MALLOC_FAILED                                             :: MALLOC_FAILED;
    SAPP_LOGITEM_MACOS_INVALID_NSOPENGL_PROFILE                            :: MACOS_INVALID_NSOPENGL_PROFILE;
    SAPP_LOGITEM_WIN32_LOAD_OPENGL32_DLL_FAILED                            :: WIN32_LOAD_OPENGL32_DLL_FAILED;
    SAPP_LOGITEM_WIN32_CREATE_HELPER_WINDOW_FAILED                         :: WIN32_CREATE_HELPER_WINDOW_FAILED;
    SAPP_LOGITEM_WIN32_HELPER_WINDOW_GETDC_FAILED                          :: WIN32_HELPER_WINDOW_GETDC_FAILED;
    SAPP_LOGITEM_WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED                :: WIN32_DUMMY_CONTEXT_SET_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_CREATE_DUMMY_CONTEXT_FAILED                         :: WIN32_CREATE_DUMMY_CONTEXT_FAILED;
    SAPP_LOGITEM_WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED                   :: WIN32_DUMMY_CONTEXT_MAKE_CURRENT_FAILED;
    SAPP_LOGITEM_WIN32_GET_PIXELFORMAT_ATTRIB_FAILED                       :: WIN32_GET_PIXELFORMAT_ATTRIB_FAILED;
    SAPP_LOGITEM_WIN32_WGL_FIND_PIXELFORMAT_FAILED                         :: WIN32_WGL_FIND_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED                     :: WIN32_WGL_DESCRIBE_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_SET_PIXELFORMAT_FAILED                          :: WIN32_WGL_SET_PIXELFORMAT_FAILED;
    SAPP_LOGITEM_WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED                     :: WIN32_WGL_ARB_CREATE_CONTEXT_REQUIRED;
    SAPP_LOGITEM_WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED             :: WIN32_WGL_ARB_CREATE_CONTEXT_PROFILE_REQUIRED;
    SAPP_LOGITEM_WIN32_WGL_OPENGL_3_2_NOT_SUPPORTED                        :: WIN32_WGL_OPENGL_3_2_NOT_SUPPORTED;
    SAPP_LOGITEM_WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED                    :: WIN32_WGL_OPENGL_PROFILE_NOT_SUPPORTED;
    SAPP_LOGITEM_WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT                     :: WIN32_WGL_INCOMPATIBLE_DEVICE_CONTEXT;
    SAPP_LOGITEM_WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER             :: WIN32_WGL_CREATE_CONTEXT_ATTRIBS_FAILED_OTHER;
    SAPP_LOGITEM_WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED :: WIN32_D3D11_CREATE_DEVICE_AND_SWAPCHAIN_WITH_DEBUG_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_GET_IDXGIFACTORY_FAILED                       :: WIN32_D3D11_GET_IDXGIFACTORY_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_GET_IDXGIADAPTER_FAILED                       :: WIN32_D3D11_GET_IDXGIADAPTER_FAILED;
    SAPP_LOGITEM_WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED           :: WIN32_D3D11_QUERY_INTERFACE_IDXGIDEVICE1_FAILED;
    SAPP_LOGITEM_WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK        :: WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_LOCK;
    SAPP_LOGITEM_WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK      :: WIN32_REGISTER_RAW_INPUT_DEVICES_FAILED_MOUSE_UNLOCK;
    SAPP_LOGITEM_WIN32_GET_RAW_INPUT_DATA_FAILED                           :: WIN32_GET_RAW_INPUT_DATA_FAILED;
    SAPP_LOGITEM_LINUX_GLX_LOAD_LIBGL_FAILED                               :: LINUX_GLX_LOAD_LIBGL_FAILED;
    SAPP_LOGITEM_LINUX_GLX_LOAD_ENTRY_POINTS_FAILED                        :: LINUX_GLX_LOAD_ENTRY_POINTS_FAILED;
    SAPP_LOGITEM_LINUX_GLX_EXTENSION_NOT_FOUND                             :: LINUX_GLX_EXTENSION_NOT_FOUND;
    SAPP_LOGITEM_LINUX_GLX_QUERY_VERSION_FAILED                            :: LINUX_GLX_QUERY_VERSION_FAILED;
    SAPP_LOGITEM_LINUX_GLX_VERSION_TOO_LOW                                 :: LINUX_GLX_VERSION_TOO_LOW;
    SAPP_LOGITEM_LINUX_GLX_NO_GLXFBCONFIGS                                 :: LINUX_GLX_NO_GLXFBCONFIGS;
    SAPP_LOGITEM_LINUX_GLX_NO_SUITABLE_GLXFBCONFIG                         :: LINUX_GLX_NO_SUITABLE_GLXFBCONFIG;
    SAPP_LOGITEM_LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED                 :: LINUX_GLX_GET_VISUAL_FROM_FBCONFIG_FAILED;
    SAPP_LOGITEM_LINUX_GLX_REQUIRED_EXTENSIONS_MISSING                     :: LINUX_GLX_REQUIRED_EXTENSIONS_MISSING;
    SAPP_LOGITEM_LINUX_GLX_CREATE_CONTEXT_FAILED                           :: LINUX_GLX_CREATE_CONTEXT_FAILED;
    SAPP_LOGITEM_LINUX_GLX_CREATE_WINDOW_FAILED                            :: LINUX_GLX_CREATE_WINDOW_FAILED;
    SAPP_LOGITEM_LINUX_X11_CREATE_WINDOW_FAILED                            :: LINUX_X11_CREATE_WINDOW_FAILED;
    SAPP_LOGITEM_LINUX_EGL_BIND_OPENGL_API_FAILED                          :: LINUX_EGL_BIND_OPENGL_API_FAILED;
    SAPP_LOGITEM_LINUX_EGL_BIND_OPENGL_ES_API_FAILED                       :: LINUX_EGL_BIND_OPENGL_ES_API_FAILED;
    SAPP_LOGITEM_LINUX_EGL_GET_DISPLAY_FAILED                              :: LINUX_EGL_GET_DISPLAY_FAILED;
    SAPP_LOGITEM_LINUX_EGL_INITIALIZE_FAILED                               :: LINUX_EGL_INITIALIZE_FAILED;
    SAPP_LOGITEM_LINUX_EGL_NO_CONFIGS                                      :: LINUX_EGL_NO_CONFIGS;
    SAPP_LOGITEM_LINUX_EGL_NO_NATIVE_VISUAL                                :: LINUX_EGL_NO_NATIVE_VISUAL;
    SAPP_LOGITEM_LINUX_EGL_GET_VISUAL_INFO_FAILED                          :: LINUX_EGL_GET_VISUAL_INFO_FAILED;
    SAPP_LOGITEM_LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED                    :: LINUX_EGL_CREATE_WINDOW_SURFACE_FAILED;
    SAPP_LOGITEM_LINUX_EGL_CREATE_CONTEXT_FAILED                           :: LINUX_EGL_CREATE_CONTEXT_FAILED;
    SAPP_LOGITEM_LINUX_EGL_MAKE_CURRENT_FAILED                             :: LINUX_EGL_MAKE_CURRENT_FAILED;
    SAPP_LOGITEM_LINUX_X11_OPEN_DISPLAY_FAILED                             :: LINUX_X11_OPEN_DISPLAY_FAILED;
    SAPP_LOGITEM_LINUX_X11_QUERY_SYSTEM_DPI_FAILED                         :: LINUX_X11_QUERY_SYSTEM_DPI_FAILED;
    SAPP_LOGITEM_LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME                   :: LINUX_X11_DROPPED_FILE_URI_WRONG_SCHEME;
    SAPP_LOGITEM_ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB                  :: ANDROID_UNSUPPORTED_INPUT_EVENT_INPUT_CB;
    SAPP_LOGITEM_ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB                   :: ANDROID_UNSUPPORTED_INPUT_EVENT_MAIN_CB;
    SAPP_LOGITEM_ANDROID_READ_MSG_FAILED                                   :: ANDROID_READ_MSG_FAILED;
    SAPP_LOGITEM_ANDROID_WRITE_MSG_FAILED                                  :: ANDROID_WRITE_MSG_FAILED;
    SAPP_LOGITEM_ANDROID_MSG_CREATE                                        :: ANDROID_MSG_CREATE;
    SAPP_LOGITEM_ANDROID_MSG_RESUME                                        :: ANDROID_MSG_RESUME;
    SAPP_LOGITEM_ANDROID_MSG_PAUSE                                         :: ANDROID_MSG_PAUSE;
    SAPP_LOGITEM_ANDROID_MSG_FOCUS                                         :: ANDROID_MSG_FOCUS;
    SAPP_LOGITEM_ANDROID_MSG_NO_FOCUS                                      :: ANDROID_MSG_NO_FOCUS;
    SAPP_LOGITEM_ANDROID_MSG_SET_NATIVE_WINDOW                             :: ANDROID_MSG_SET_NATIVE_WINDOW;
    SAPP_LOGITEM_ANDROID_MSG_SET_INPUT_QUEUE                               :: ANDROID_MSG_SET_INPUT_QUEUE;
    SAPP_LOGITEM_ANDROID_MSG_DESTROY                                       :: ANDROID_MSG_DESTROY;
    SAPP_LOGITEM_ANDROID_UNKNOWN_MSG                                       :: ANDROID_UNKNOWN_MSG;
    SAPP_LOGITEM_ANDROID_LOOP_THREAD_STARTED                               :: ANDROID_LOOP_THREAD_STARTED;
    SAPP_LOGITEM_ANDROID_LOOP_THREAD_DONE                                  :: ANDROID_LOOP_THREAD_DONE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSTART                           :: ANDROID_NATIVE_ACTIVITY_ONSTART;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONRESUME                          :: ANDROID_NATIVE_ACTIVITY_ONRESUME;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE               :: ANDROID_NATIVE_ACTIVITY_ONSAVEINSTANCESTATE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED              :: ANDROID_NATIVE_ACTIVITY_ONWINDOWFOCUSCHANGED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONPAUSE                           :: ANDROID_NATIVE_ACTIVITY_ONPAUSE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONSTOP                            :: ANDROID_NATIVE_ACTIVITY_ONSTOP;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED             :: ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWCREATED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED           :: ANDROID_NATIVE_ACTIVITY_ONNATIVEWINDOWDESTROYED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED               :: ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUECREATED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED             :: ANDROID_NATIVE_ACTIVITY_ONINPUTQUEUEDESTROYED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED            :: ANDROID_NATIVE_ACTIVITY_ONCONFIGURATIONCHANGED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY                       :: ANDROID_NATIVE_ACTIVITY_ONLOWMEMORY;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONDESTROY                         :: ANDROID_NATIVE_ACTIVITY_ONDESTROY;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_DONE                              :: ANDROID_NATIVE_ACTIVITY_DONE;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_ONCREATE                          :: ANDROID_NATIVE_ACTIVITY_ONCREATE;
    SAPP_LOGITEM_ANDROID_CREATE_THREAD_PIPE_FAILED                         :: ANDROID_CREATE_THREAD_PIPE_FAILED;
    SAPP_LOGITEM_ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS                    :: ANDROID_NATIVE_ACTIVITY_CREATE_SUCCESS;
    SAPP_LOGITEM_IMAGE_DATA_SIZE_MISMATCH                                  :: IMAGE_DATA_SIZE_MISMATCH;
    SAPP_LOGITEM_DROPPED_FILE_PATH_TOO_LONG                                :: DROPPED_FILE_PATH_TOO_LONG;
    SAPP_LOGITEM_CLIPBOARD_STRING_TOO_BIG                                  :: CLIPBOARD_STRING_TOO_BIG;
}

/*
sapp_logger

Used in sapp_desc to provide a logging function. Please be aware that
without logging function, sokol-app will be completely silent, e.g. it will
not report errors or warnings. For maximum error verbosity, compile in
debug mode (e.g. NDEBUG *not* defined) and install a logger (for instance
the standard logging function from sokol_log.h).
*/
sapp_logger :: struct {
    func:      #type (tag: *u8, log_level: u32, log_item_id: u32, message_or_null: *u8, line_nr: u32, filename_or_null: *u8, user_data: *void) -> void #c_call;

    user_data: *void;
}
#run {
    instance: sapp_logger;
    assert(((cast(*void)(*instance.func)) - cast(*void)(*instance)) == 0, "sapp_logger.func has unexpected offset % instead of 0", ((cast(*void)(*instance.func)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_logger.func)) == 8, "sapp_logger.func has unexpected size % instead of 8", size_of(type_of(sapp_logger.func)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 8, "sapp_logger.user_data has unexpected offset % instead of 8", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_logger.user_data)) == 8, "sapp_logger.user_data has unexpected size % instead of 8", size_of(type_of(sapp_logger.user_data)));
    assert(size_of(sapp_logger) == 16, "sapp_logger has size % instead of 16", size_of(sapp_logger));
}

sapp_desc :: struct {
    init_cb:                       #type () -> void #c_call; // these are the user-provided callbacks without user data
    frame_cb:                      #type () -> void #c_call;
    cleanup_cb:                    #type () -> void #c_call;
    event_cb:                      #type (unknown0: *sapp_event) -> void #c_call;

    user_data:                     *void; // these are the user-provided callbacks with user data
    init_userdata_cb:              #type (unknown0: *void) -> void #c_call;
    frame_userdata_cb:             #type (unknown0: *void) -> void #c_call;
    cleanup_userdata_cb:           #type (unknown0: *void) -> void #c_call;
    event_userdata_cb:             #type (unknown0: *sapp_event, unknown1: *void) -> void #c_call;

    width:                         s32; // the preferred width of the window / canvas
    height:                        s32; // the preferred height of the window / canvas
    sample_count:                  s32; // MSAA sample count
    swap_interval:                 s32; // the preferred swap interval (ignored on some platforms)
    high_dpi:                      bool; // whether the rendering canvas is full-resolution on HighDPI displays
    fullscreen:                    bool; // whether the window should be created in fullscreen mode
    alpha:                         bool; // whether the framebuffer should have an alpha channel (ignored on some platforms)
    window_title:                  *u8; // the window title as UTF-8 encoded string
    enable_clipboard:              bool; // enable clipboard access, default is false
    clipboard_size:                s32; // max size of clipboard content in bytes
    enable_dragndrop:              bool; // enable file dropping (drag'n'drop), default is false
    max_dropped_files:             s32; // max number of dropped files to process (default: 1)
    max_dropped_file_path_length:  s32; // max length in bytes of a dropped UTF-8 file path (default: 2048)
    icon:                          sapp_icon_desc; // the initial window icon to set
    allocator:                     sapp_allocator; // optional memory allocation overrides (default: malloc/free)
    logger:                        sapp_logger; // logging callback override (default: NO LOGGING!)

    gl_force_gles2:                bool; // if true, setup GLES2/WebGL even if GLES3/WebGL2 is available
    gl_major_version:              s32; // override GL major and minor version (the default GL version is 3.2)
    gl_minor_version:              s32;
    win32_console_utf8:            bool; // if true, set the output console codepage to UTF-8
    win32_console_create:          bool; // if true, attach stdout/stderr to a new console window
    win32_console_attach:          bool; // if true, attach stdout/stderr to parent process
    html5_canvas_name:             *u8; // the name (id) of the HTML5 canvas element, default is "canvas"
    html5_canvas_resize:           bool; // if true, the HTML5 canvas size is set to sapp_desc.width/height, otherwise canvas size is tracked
    html5_preserve_drawing_buffer: bool; // HTML5 only: whether to preserve default framebuffer content between frames
    html5_premultiplied_alpha:     bool; // HTML5 only: whether the rendered pixels use premultiplied alpha convention
    html5_ask_leave_site:          bool; // initial state of the internal html5_ask_leave_site flag (see sapp_html5_ask_leave_site())
    ios_keyboard_resizes_canvas:   bool; // if true, showing the iOS keyboard shrinks the canvas
}
#run {
    instance: sapp_desc;
    assert(((cast(*void)(*instance.init_cb)) - cast(*void)(*instance)) == 0, "sapp_desc.init_cb has unexpected offset % instead of 0", ((cast(*void)(*instance.init_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.init_cb)) == 8, "sapp_desc.init_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.init_cb)));
    assert(((cast(*void)(*instance.frame_cb)) - cast(*void)(*instance)) == 8, "sapp_desc.frame_cb has unexpected offset % instead of 8", ((cast(*void)(*instance.frame_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.frame_cb)) == 8, "sapp_desc.frame_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.frame_cb)));
    assert(((cast(*void)(*instance.cleanup_cb)) - cast(*void)(*instance)) == 16, "sapp_desc.cleanup_cb has unexpected offset % instead of 16", ((cast(*void)(*instance.cleanup_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.cleanup_cb)) == 8, "sapp_desc.cleanup_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.cleanup_cb)));
    assert(((cast(*void)(*instance.event_cb)) - cast(*void)(*instance)) == 24, "sapp_desc.event_cb has unexpected offset % instead of 24", ((cast(*void)(*instance.event_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.event_cb)) == 8, "sapp_desc.event_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.event_cb)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 32, "sapp_desc.user_data has unexpected offset % instead of 32", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.user_data)) == 8, "sapp_desc.user_data has unexpected size % instead of 8", size_of(type_of(sapp_desc.user_data)));
    assert(((cast(*void)(*instance.init_userdata_cb)) - cast(*void)(*instance)) == 40, "sapp_desc.init_userdata_cb has unexpected offset % instead of 40", ((cast(*void)(*instance.init_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.init_userdata_cb)) == 8, "sapp_desc.init_userdata_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.init_userdata_cb)));
    assert(((cast(*void)(*instance.frame_userdata_cb)) - cast(*void)(*instance)) == 48, "sapp_desc.frame_userdata_cb has unexpected offset % instead of 48", ((cast(*void)(*instance.frame_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.frame_userdata_cb)) == 8, "sapp_desc.frame_userdata_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.frame_userdata_cb)));
    assert(((cast(*void)(*instance.cleanup_userdata_cb)) - cast(*void)(*instance)) == 56, "sapp_desc.cleanup_userdata_cb has unexpected offset % instead of 56", ((cast(*void)(*instance.cleanup_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.cleanup_userdata_cb)) == 8, "sapp_desc.cleanup_userdata_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.cleanup_userdata_cb)));
    assert(((cast(*void)(*instance.event_userdata_cb)) - cast(*void)(*instance)) == 64, "sapp_desc.event_userdata_cb has unexpected offset % instead of 64", ((cast(*void)(*instance.event_userdata_cb)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.event_userdata_cb)) == 8, "sapp_desc.event_userdata_cb has unexpected size % instead of 8", size_of(type_of(sapp_desc.event_userdata_cb)));
    assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 72, "sapp_desc.width has unexpected offset % instead of 72", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.width)) == 4, "sapp_desc.width has unexpected size % instead of 4", size_of(type_of(sapp_desc.width)));
    assert(((cast(*void)(*instance.height)) - cast(*void)(*instance)) == 76, "sapp_desc.height has unexpected offset % instead of 76", ((cast(*void)(*instance.height)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.height)) == 4, "sapp_desc.height has unexpected size % instead of 4", size_of(type_of(sapp_desc.height)));
    assert(((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)) == 80, "sapp_desc.sample_count has unexpected offset % instead of 80", ((cast(*void)(*instance.sample_count)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.sample_count)) == 4, "sapp_desc.sample_count has unexpected size % instead of 4", size_of(type_of(sapp_desc.sample_count)));
    assert(((cast(*void)(*instance.swap_interval)) - cast(*void)(*instance)) == 84, "sapp_desc.swap_interval has unexpected offset % instead of 84", ((cast(*void)(*instance.swap_interval)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.swap_interval)) == 4, "sapp_desc.swap_interval has unexpected size % instead of 4", size_of(type_of(sapp_desc.swap_interval)));
    assert(((cast(*void)(*instance.high_dpi)) - cast(*void)(*instance)) == 88, "sapp_desc.high_dpi has unexpected offset % instead of 88", ((cast(*void)(*instance.high_dpi)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.high_dpi)) == 1, "sapp_desc.high_dpi has unexpected size % instead of 1", size_of(type_of(sapp_desc.high_dpi)));
    assert(((cast(*void)(*instance.fullscreen)) - cast(*void)(*instance)) == 89, "sapp_desc.fullscreen has unexpected offset % instead of 89", ((cast(*void)(*instance.fullscreen)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.fullscreen)) == 1, "sapp_desc.fullscreen has unexpected size % instead of 1", size_of(type_of(sapp_desc.fullscreen)));
    assert(((cast(*void)(*instance.alpha)) - cast(*void)(*instance)) == 90, "sapp_desc.alpha has unexpected offset % instead of 90", ((cast(*void)(*instance.alpha)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.alpha)) == 1, "sapp_desc.alpha has unexpected size % instead of 1", size_of(type_of(sapp_desc.alpha)));
    assert(((cast(*void)(*instance.window_title)) - cast(*void)(*instance)) == 96, "sapp_desc.window_title has unexpected offset % instead of 96", ((cast(*void)(*instance.window_title)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.window_title)) == 8, "sapp_desc.window_title has unexpected size % instead of 8", size_of(type_of(sapp_desc.window_title)));
    assert(((cast(*void)(*instance.enable_clipboard)) - cast(*void)(*instance)) == 104, "sapp_desc.enable_clipboard has unexpected offset % instead of 104", ((cast(*void)(*instance.enable_clipboard)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.enable_clipboard)) == 1, "sapp_desc.enable_clipboard has unexpected size % instead of 1", size_of(type_of(sapp_desc.enable_clipboard)));
    assert(((cast(*void)(*instance.clipboard_size)) - cast(*void)(*instance)) == 108, "sapp_desc.clipboard_size has unexpected offset % instead of 108", ((cast(*void)(*instance.clipboard_size)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.clipboard_size)) == 4, "sapp_desc.clipboard_size has unexpected size % instead of 4", size_of(type_of(sapp_desc.clipboard_size)));
    assert(((cast(*void)(*instance.enable_dragndrop)) - cast(*void)(*instance)) == 112, "sapp_desc.enable_dragndrop has unexpected offset % instead of 112", ((cast(*void)(*instance.enable_dragndrop)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.enable_dragndrop)) == 1, "sapp_desc.enable_dragndrop has unexpected size % instead of 1", size_of(type_of(sapp_desc.enable_dragndrop)));
    assert(((cast(*void)(*instance.max_dropped_files)) - cast(*void)(*instance)) == 116, "sapp_desc.max_dropped_files has unexpected offset % instead of 116", ((cast(*void)(*instance.max_dropped_files)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.max_dropped_files)) == 4, "sapp_desc.max_dropped_files has unexpected size % instead of 4", size_of(type_of(sapp_desc.max_dropped_files)));
    assert(((cast(*void)(*instance.max_dropped_file_path_length)) - cast(*void)(*instance)) == 120, "sapp_desc.max_dropped_file_path_length has unexpected offset % instead of 120", ((cast(*void)(*instance.max_dropped_file_path_length)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.max_dropped_file_path_length)) == 4, "sapp_desc.max_dropped_file_path_length has unexpected size % instead of 4", size_of(type_of(sapp_desc.max_dropped_file_path_length)));
    assert(((cast(*void)(*instance.icon)) - cast(*void)(*instance)) == 128, "sapp_desc.icon has unexpected offset % instead of 128", ((cast(*void)(*instance.icon)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.icon)) == 200, "sapp_desc.icon has unexpected size % instead of 200", size_of(type_of(sapp_desc.icon)));
    assert(((cast(*void)(*instance.allocator)) - cast(*void)(*instance)) == 328, "sapp_desc.allocator has unexpected offset % instead of 328", ((cast(*void)(*instance.allocator)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.allocator)) == 24, "sapp_desc.allocator has unexpected size % instead of 24", size_of(type_of(sapp_desc.allocator)));
    assert(((cast(*void)(*instance.logger)) - cast(*void)(*instance)) == 352, "sapp_desc.logger has unexpected offset % instead of 352", ((cast(*void)(*instance.logger)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.logger)) == 16, "sapp_desc.logger has unexpected size % instead of 16", size_of(type_of(sapp_desc.logger)));
    assert(((cast(*void)(*instance.gl_force_gles2)) - cast(*void)(*instance)) == 368, "sapp_desc.gl_force_gles2 has unexpected offset % instead of 368", ((cast(*void)(*instance.gl_force_gles2)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.gl_force_gles2)) == 1, "sapp_desc.gl_force_gles2 has unexpected size % instead of 1", size_of(type_of(sapp_desc.gl_force_gles2)));
    assert(((cast(*void)(*instance.gl_major_version)) - cast(*void)(*instance)) == 372, "sapp_desc.gl_major_version has unexpected offset % instead of 372", ((cast(*void)(*instance.gl_major_version)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.gl_major_version)) == 4, "sapp_desc.gl_major_version has unexpected size % instead of 4", size_of(type_of(sapp_desc.gl_major_version)));
    assert(((cast(*void)(*instance.gl_minor_version)) - cast(*void)(*instance)) == 376, "sapp_desc.gl_minor_version has unexpected offset % instead of 376", ((cast(*void)(*instance.gl_minor_version)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.gl_minor_version)) == 4, "sapp_desc.gl_minor_version has unexpected size % instead of 4", size_of(type_of(sapp_desc.gl_minor_version)));
    assert(((cast(*void)(*instance.win32_console_utf8)) - cast(*void)(*instance)) == 380, "sapp_desc.win32_console_utf8 has unexpected offset % instead of 380", ((cast(*void)(*instance.win32_console_utf8)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.win32_console_utf8)) == 1, "sapp_desc.win32_console_utf8 has unexpected size % instead of 1", size_of(type_of(sapp_desc.win32_console_utf8)));
    assert(((cast(*void)(*instance.win32_console_create)) - cast(*void)(*instance)) == 381, "sapp_desc.win32_console_create has unexpected offset % instead of 381", ((cast(*void)(*instance.win32_console_create)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.win32_console_create)) == 1, "sapp_desc.win32_console_create has unexpected size % instead of 1", size_of(type_of(sapp_desc.win32_console_create)));
    assert(((cast(*void)(*instance.win32_console_attach)) - cast(*void)(*instance)) == 382, "sapp_desc.win32_console_attach has unexpected offset % instead of 382", ((cast(*void)(*instance.win32_console_attach)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.win32_console_attach)) == 1, "sapp_desc.win32_console_attach has unexpected size % instead of 1", size_of(type_of(sapp_desc.win32_console_attach)));
    assert(((cast(*void)(*instance.html5_canvas_name)) - cast(*void)(*instance)) == 384, "sapp_desc.html5_canvas_name has unexpected offset % instead of 384", ((cast(*void)(*instance.html5_canvas_name)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.html5_canvas_name)) == 8, "sapp_desc.html5_canvas_name has unexpected size % instead of 8", size_of(type_of(sapp_desc.html5_canvas_name)));
    assert(((cast(*void)(*instance.html5_canvas_resize)) - cast(*void)(*instance)) == 392, "sapp_desc.html5_canvas_resize has unexpected offset % instead of 392", ((cast(*void)(*instance.html5_canvas_resize)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.html5_canvas_resize)) == 1, "sapp_desc.html5_canvas_resize has unexpected size % instead of 1", size_of(type_of(sapp_desc.html5_canvas_resize)));
    assert(((cast(*void)(*instance.html5_preserve_drawing_buffer)) - cast(*void)(*instance)) == 393, "sapp_desc.html5_preserve_drawing_buffer has unexpected offset % instead of 393", ((cast(*void)(*instance.html5_preserve_drawing_buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.html5_preserve_drawing_buffer)) == 1, "sapp_desc.html5_preserve_drawing_buffer has unexpected size % instead of 1", size_of(type_of(sapp_desc.html5_preserve_drawing_buffer)));
    assert(((cast(*void)(*instance.html5_premultiplied_alpha)) - cast(*void)(*instance)) == 394, "sapp_desc.html5_premultiplied_alpha has unexpected offset % instead of 394", ((cast(*void)(*instance.html5_premultiplied_alpha)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.html5_premultiplied_alpha)) == 1, "sapp_desc.html5_premultiplied_alpha has unexpected size % instead of 1", size_of(type_of(sapp_desc.html5_premultiplied_alpha)));
    assert(((cast(*void)(*instance.html5_ask_leave_site)) - cast(*void)(*instance)) == 395, "sapp_desc.html5_ask_leave_site has unexpected offset % instead of 395", ((cast(*void)(*instance.html5_ask_leave_site)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.html5_ask_leave_site)) == 1, "sapp_desc.html5_ask_leave_site has unexpected size % instead of 1", size_of(type_of(sapp_desc.html5_ask_leave_site)));
    assert(((cast(*void)(*instance.ios_keyboard_resizes_canvas)) - cast(*void)(*instance)) == 396, "sapp_desc.ios_keyboard_resizes_canvas has unexpected offset % instead of 396", ((cast(*void)(*instance.ios_keyboard_resizes_canvas)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_desc.ios_keyboard_resizes_canvas)) == 1, "sapp_desc.ios_keyboard_resizes_canvas has unexpected size % instead of 1", size_of(type_of(sapp_desc.ios_keyboard_resizes_canvas)));
    assert(size_of(sapp_desc) == 400, "sapp_desc has size % instead of 400", size_of(sapp_desc));
}

/* HTML5 specific: request and response structs for
asynchronously loading dropped-file content.
*/
sapp_html5_fetch_error :: enum u32 {
    NO_ERROR         :: 0;
    BUFFER_TOO_SMALL :: 1;
    OTHER            :: 2;

    SAPP_HTML5_FETCH_ERROR_NO_ERROR         :: NO_ERROR;
    SAPP_HTML5_FETCH_ERROR_BUFFER_TOO_SMALL :: BUFFER_TOO_SMALL;
    SAPP_HTML5_FETCH_ERROR_OTHER            :: OTHER;
}

sapp_html5_fetch_response :: struct {
    succeeded:  bool; // true if the loading operation has succeeded
    error_code: sapp_html5_fetch_error;
    file_index: s32; // index of the dropped file (0..sapp_get_num_dropped_filed()-1)
    data:       sapp_range; // pointer and size of the fetched data (data.ptr == buffer.ptr, data.size <= buffer.size)
    buffer:     sapp_range; // the user-provided buffer ptr/size pair (buffer.ptr == data.ptr, buffer.size >= data.size)
    user_data:  *void; // user-provided user data pointer
}
#run {
    instance: sapp_html5_fetch_response;
    assert(((cast(*void)(*instance.succeeded)) - cast(*void)(*instance)) == 0, "sapp_html5_fetch_response.succeeded has unexpected offset % instead of 0", ((cast(*void)(*instance.succeeded)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.succeeded)) == 1, "sapp_html5_fetch_response.succeeded has unexpected size % instead of 1", size_of(type_of(sapp_html5_fetch_response.succeeded)));
    assert(((cast(*void)(*instance.error_code)) - cast(*void)(*instance)) == 4, "sapp_html5_fetch_response.error_code has unexpected offset % instead of 4", ((cast(*void)(*instance.error_code)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.error_code)) == 4, "sapp_html5_fetch_response.error_code has unexpected size % instead of 4", size_of(type_of(sapp_html5_fetch_response.error_code)));
    assert(((cast(*void)(*instance.file_index)) - cast(*void)(*instance)) == 8, "sapp_html5_fetch_response.file_index has unexpected offset % instead of 8", ((cast(*void)(*instance.file_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.file_index)) == 4, "sapp_html5_fetch_response.file_index has unexpected size % instead of 4", size_of(type_of(sapp_html5_fetch_response.file_index)));
    assert(((cast(*void)(*instance.data)) - cast(*void)(*instance)) == 16, "sapp_html5_fetch_response.data has unexpected offset % instead of 16", ((cast(*void)(*instance.data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.data)) == 16, "sapp_html5_fetch_response.data has unexpected size % instead of 16", size_of(type_of(sapp_html5_fetch_response.data)));
    assert(((cast(*void)(*instance.buffer)) - cast(*void)(*instance)) == 32, "sapp_html5_fetch_response.buffer has unexpected offset % instead of 32", ((cast(*void)(*instance.buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.buffer)) == 16, "sapp_html5_fetch_response.buffer has unexpected size % instead of 16", size_of(type_of(sapp_html5_fetch_response.buffer)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 48, "sapp_html5_fetch_response.user_data has unexpected offset % instead of 48", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_response.user_data)) == 8, "sapp_html5_fetch_response.user_data has unexpected size % instead of 8", size_of(type_of(sapp_html5_fetch_response.user_data)));
    assert(size_of(sapp_html5_fetch_response) == 56, "sapp_html5_fetch_response has size % instead of 56", size_of(sapp_html5_fetch_response));
}

sapp_html5_fetch_request :: struct {
    dropped_file_index: s32; // 0..sapp_get_num_dropped_files()-1
    callback:           #type (unknown0: *sapp_html5_fetch_response) -> void #c_call; // response callback function pointer (required)
    buffer:             sapp_range; // ptr/size of a memory buffer to load the data into
    user_data:          *void; // optional userdata pointer
}
#run {
    instance: sapp_html5_fetch_request;
    assert(((cast(*void)(*instance.dropped_file_index)) - cast(*void)(*instance)) == 0, "sapp_html5_fetch_request.dropped_file_index has unexpected offset % instead of 0", ((cast(*void)(*instance.dropped_file_index)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_request.dropped_file_index)) == 4, "sapp_html5_fetch_request.dropped_file_index has unexpected size % instead of 4", size_of(type_of(sapp_html5_fetch_request.dropped_file_index)));
    assert(((cast(*void)(*instance.callback)) - cast(*void)(*instance)) == 8, "sapp_html5_fetch_request.callback has unexpected offset % instead of 8", ((cast(*void)(*instance.callback)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_request.callback)) == 8, "sapp_html5_fetch_request.callback has unexpected size % instead of 8", size_of(type_of(sapp_html5_fetch_request.callback)));
    assert(((cast(*void)(*instance.buffer)) - cast(*void)(*instance)) == 16, "sapp_html5_fetch_request.buffer has unexpected offset % instead of 16", ((cast(*void)(*instance.buffer)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_request.buffer)) == 16, "sapp_html5_fetch_request.buffer has unexpected size % instead of 16", size_of(type_of(sapp_html5_fetch_request.buffer)));
    assert(((cast(*void)(*instance.user_data)) - cast(*void)(*instance)) == 32, "sapp_html5_fetch_request.user_data has unexpected offset % instead of 32", ((cast(*void)(*instance.user_data)) - cast(*void)(*instance)));
    assert(size_of(type_of(sapp_html5_fetch_request.user_data)) == 8, "sapp_html5_fetch_request.user_data has unexpected size % instead of 8", size_of(type_of(sapp_html5_fetch_request.user_data)));
    assert(size_of(sapp_html5_fetch_request) == 40, "sapp_html5_fetch_request has size % instead of 40", size_of(sapp_html5_fetch_request));
}

/*
sapp_mouse_cursor

Predefined cursor image definitions, set with sapp_set_mouse_cursor(sapp_mouse_cursor cursor)
*/
sapp_mouse_cursor :: enum u32 {
    SAPP_MOUSECURSOR_DEFAULT       :: 0;
    SAPP_MOUSECURSOR_ARROW         :: 1;
    SAPP_MOUSECURSOR_IBEAM         :: 2;
    SAPP_MOUSECURSOR_CROSSHAIR     :: 3;
    SAPP_MOUSECURSOR_POINTING_HAND :: 4;
    SAPP_MOUSECURSOR_RESIZE_EW     :: 5;
    SAPP_MOUSECURSOR_RESIZE_NS     :: 6;
    SAPP_MOUSECURSOR_RESIZE_NWSE   :: 7;
    SAPP_MOUSECURSOR_RESIZE_NESW   :: 8;
    SAPP_MOUSECURSOR_RESIZE_ALL    :: 9;
    SAPP_MOUSECURSOR_NOT_ALLOWED   :: 10;
    SAPP_MOUSECURSOR_NUM           :: 11;
    _SAPP_MOUSECURSOR_NUM :: SAPP_MOUSECURSOR_NUM;
}

/* user-provided functions */
sokol_main :: (argc: s32, argv: **u8) -> sapp_desc #foreign sokol_app;

/* returns true after sokol-app has been initialized */
sapp_isvalid :: () -> bool #foreign sokol_app;

/* returns the current framebuffer width in pixels */
sapp_width :: () -> s32 #foreign sokol_app;

/* same as sapp_width(), but returns float */
sapp_widthf :: () -> float #foreign sokol_app;

/* returns the current framebuffer height in pixels */
sapp_height :: () -> s32 #foreign sokol_app;

/* same as sapp_height(), but returns float */
sapp_heightf :: () -> float #foreign sokol_app;

/* get default framebuffer color pixel format */
sapp_color_format :: () -> s32 #foreign sokol_app;

/* get default framebuffer depth pixel format */
sapp_depth_format :: () -> s32 #foreign sokol_app;

/* get default framebuffer sample count */
sapp_sample_count :: () -> s32 #foreign sokol_app;

/* returns true when high_dpi was requested and actually running in a high-dpi scenario */
sapp_high_dpi :: () -> bool #foreign sokol_app;

/* returns the dpi scaling factor (window pixels to framebuffer pixels) */
sapp_dpi_scale :: () -> float #foreign sokol_app;

/* show or hide the mobile device onscreen keyboard */
sapp_show_keyboard :: (show: bool) -> void #foreign sokol_app;

/* return true if the mobile device onscreen keyboard is currently shown */
sapp_keyboard_shown :: () -> bool #foreign sokol_app;

/* query fullscreen mode */
sapp_is_fullscreen :: () -> bool #foreign sokol_app;

/* toggle fullscreen mode */
sapp_toggle_fullscreen :: () -> void #foreign sokol_app;

/* show or hide the mouse cursor */
sapp_show_mouse :: (show: bool) -> void #foreign sokol_app;

/* show or hide the mouse cursor */
sapp_mouse_shown :: () -> bool #foreign sokol_app;

/* enable/disable mouse-pointer-lock mode */
sapp_lock_mouse :: (lock: bool) -> void #foreign sokol_app;

/* return true if in mouse-pointer-lock mode (this may toggle a few frames later) */
sapp_mouse_locked :: () -> bool #foreign sokol_app;

/* set mouse cursor type */
sapp_set_mouse_cursor :: (cursor: sapp_mouse_cursor) -> void #foreign sokol_app;

/* get current mouse cursor type */
sapp_get_mouse_cursor :: () -> sapp_mouse_cursor #foreign sokol_app;

/* return the userdata pointer optionally provided in sapp_desc */
sapp_userdata :: () -> *void #foreign sokol_app;

/* return a copy of the sapp_desc structure */
sapp_query_desc :: () -> sapp_desc #foreign sokol_app;

/* initiate a "soft quit" (sends SAPP_EVENTTYPE_QUIT_REQUESTED) */
sapp_request_quit :: () -> void #foreign sokol_app;

/* cancel a pending quit (when SAPP_EVENTTYPE_QUIT_REQUESTED has been received) */
sapp_cancel_quit :: () -> void #foreign sokol_app;

/* initiate a "hard quit" (quit application without sending SAPP_EVENTTYPE_QUIT_REQUSTED) */
sapp_quit :: () -> void #foreign sokol_app;

/* call from inside event callback to consume the current event (don't forward to platform) */
sapp_consume_event :: () -> void #foreign sokol_app;

/* get the current frame counter (for comparison with sapp_event.frame_count) */
sapp_frame_count :: () -> u64 #foreign sokol_app;

/* get an averaged/smoothed frame duration in seconds */
sapp_frame_duration :: () -> float64 #foreign sokol_app;

/* write string into clipboard */
sapp_set_clipboard_string :: (str: *u8) -> void #foreign sokol_app;

/* read string from clipboard (usually during SAPP_EVENTTYPE_CLIPBOARD_PASTED) */
sapp_get_clipboard_string :: () -> *u8 #foreign sokol_app;

/* set the window title (only on desktop platforms) */
sapp_set_window_title :: (str: *u8) -> void #foreign sokol_app;

/* set the window icon (only on Windows and Linux) */
sapp_set_icon :: (icon_desc: *sapp_icon_desc) -> void #foreign sokol_app;

/* gets the total number of dropped files (after an SAPP_EVENTTYPE_FILES_DROPPED event) */
sapp_get_num_dropped_files :: () -> s32 #foreign sokol_app;

/* gets the dropped file paths */
sapp_get_dropped_file_path :: (index: s32) -> *u8 #foreign sokol_app;

/* special run-function for SOKOL_NO_ENTRY (in standard mode this is an empty stub) */
sapp_run :: (desc: *sapp_desc) -> void #foreign sokol_app;

/* EGL: get EGLDisplay object */
sapp_egl_get_display :: () -> *void #foreign sokol_app;

/* EGL: get EGLContext object */
sapp_egl_get_context :: () -> *void #foreign sokol_app;

/* GL: return true when GLES2 fallback is active (to detect fallback from GLES3) */
sapp_gles2 :: () -> bool #foreign sokol_app;

/* HTML5: enable or disable the hardwired "Leave Site?" dialog box */
sapp_html5_ask_leave_site :: (ask: bool) -> void #foreign sokol_app;

/* HTML5: get byte size of a dropped file */
sapp_html5_get_dropped_file_size :: (index: s32) -> u32 #foreign sokol_app;

/* HTML5: asynchronously load the content of a dropped file */
sapp_html5_fetch_dropped_file :: (request: *sapp_html5_fetch_request) -> void #foreign sokol_app;

/* Metal: get bridged pointer to Metal device object */
sapp_metal_get_device :: () -> *void #foreign sokol_app;

/* Metal: get bridged pointer to this frame's renderpass descriptor */
sapp_metal_get_renderpass_descriptor :: () -> *void #foreign sokol_app;

/* Metal: get bridged pointer to current drawable */
sapp_metal_get_drawable :: () -> *void #foreign sokol_app;

/* macOS: get bridged pointer to macOS NSWindow */
sapp_macos_get_window :: () -> *void #foreign sokol_app;

/* iOS: get bridged pointer to iOS UIWindow */
sapp_ios_get_window :: () -> *void #foreign sokol_app;

/* D3D11: get pointer to ID3D11Device object */
sapp_d3d11_get_device :: () -> *void #foreign sokol_app;

/* D3D11: get pointer to ID3D11DeviceContext object */
sapp_d3d11_get_device_context :: () -> *void #foreign sokol_app;

/* D3D11: get pointer to IDXGISwapChain object */
sapp_d3d11_get_swap_chain :: () -> *void #foreign sokol_app;

/* D3D11: get pointer to ID3D11RenderTargetView object */
sapp_d3d11_get_render_target_view :: () -> *void #foreign sokol_app;

/* D3D11: get pointer to ID3D11DepthStencilView */
sapp_d3d11_get_depth_stencil_view :: () -> *void #foreign sokol_app;

/* Win32: get the HWND window handle */
sapp_win32_get_hwnd :: () -> *void #foreign sokol_app;

/* WebGPU: get WGPUDevice handle */
sapp_wgpu_get_device :: () -> *void #foreign sokol_app;

/* WebGPU: get swapchain's WGPUTextureView handle for rendering */
sapp_wgpu_get_render_view :: () -> *void #foreign sokol_app;

/* WebGPU: get swapchain's MSAA-resolve WGPUTextureView (may return null) */
sapp_wgpu_get_resolve_view :: () -> *void #foreign sokol_app;

/* WebGPU: get swapchain's WGPUTextureView for the depth-stencil surface */
sapp_wgpu_get_depth_stencil_view :: () -> *void #foreign sokol_app;

/* Android: get native activity handle */
sapp_android_get_native_activity :: () -> *void #foreign sokol_app;

#scope_file

#import "Basic"; // For assert

