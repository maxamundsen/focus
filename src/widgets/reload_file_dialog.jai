reload_file_dialog_handle_event :: (event: Input.Event) -> bool {
    if event.type == .KEYBOARD && event.key_pressed {
        if event.key_code == {
            case .ESCAPE; close_reload_file_dialog();   return true;
            case #char "Y"; do_thing(); #through;
            case #char "N"; close_reload_file_dialog(); return true;
        }
    }

    return false;
}

show_reload_file_dialog :: (buffer_id: s64) {
    active_global_widget = .reload_file_dialog;
    reload_buffer_id = buffer_id;
}

close_reload_file_dialog :: () {
    activate_editors();
}

#scope_file
reload_buffer_id: s64;

do_thing :: () {
    reload_buffer_from_disk(reload_buffer_id);    
    close_reload_file_dialog();
}
