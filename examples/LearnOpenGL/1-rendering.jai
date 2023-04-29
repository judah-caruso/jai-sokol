c_ctx: Context;

state: struct {
    pass_action: sg_pass_action;
};

main :: () {
    desc := sapp_desc.{
        init_cb = () #c_call {
            push_context c_ctx { init(); }
        },
        frame_cb = () #c_call {
            push_context c_ctx { frame(); }
        },
        cleanup_cb = () #c_call {
            push_context c_ctx { cleanup(); }
        },
        event_cb = (e: *sapp_event) #c_call {
            push_context c_ctx { event(e); }
        },

        width =  800,
        height = 600,
        window_title = "Rendering - LearnOpenGL"
    };

    sapp_run(*desc);
}

init :: () {
    desc: sg_desc;
    sg_setup(*desc);

    state.pass_action = .{
        colors[0] = .{
            action = .SG_ACTION_CLEAR,
            value  = .{ 0.2, 0.3, 0.3, 1.0 }
        }
    };
}

cleanup :: () {
    sg_shutdown();
}

frame :: () {
    sg_begin_default_pass(*state.pass_action, sapp_width(), sapp_height());
    sg_end_pass();
    sg_commit();
}

event :: (e: *sapp_event) {
    if e.type == .SAPP_EVENTTYPE_KEY_DOWN {
        if e.key_code == .ESCAPE {
            sapp_request_quit();
        }
    }
}

#import,file "../../module.jai"(USE_APP=true, USE_GFX=true);

#import "GL";
#import "Objective_C";

#import "Basic";
