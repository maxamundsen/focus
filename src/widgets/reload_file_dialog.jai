reload_file_dialog_handle_event :: (event: Input.Event) -> bool {
    if event.type == .KEYBOARD && event.key_pressed {
        if event.key_code == {
            case .ESCAPE; #through;
            case #char "C"; return true;
            case #char "Y"; #through;
            case #char "S"; return true;
            case #char "N"; return true;
        }
    }
    
    return false;
}

show_reload_file_dialog :: (buffer_id: s64) {
    active_global_widget = .reload_file_dialog;
    
}

close