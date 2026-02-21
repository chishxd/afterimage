function scr_reset_loop(_hard_reset) {
    
    if (_hard_reset == true) {
        with (oGhost) { instance_destroy(); }
        
    } else {
		// Well I forgot when I wrote this, had to check code again, 
		//So I think I will just comment structure of record_data
		//		var _current_state = {
		//    x_pos : x,
		//    y_pos : y,
		//    img_frame : image_index,
		//    facing : image_xscale
		//};
		
        if (array_length(oPlayer.record_data) > 0) {
            var _new_ghost = instance_create_layer(oPlayer.xstart, oPlayer.ystart, "PlayerLayer", oGhost);
            
            var _copied_data = [];
            array_copy(_copied_data, 0, oPlayer.record_data, 0, array_length(oPlayer.record_data));
            _new_ghost.playback_data = _copied_data;
        }
        
        with (oGhost) {
            current_frame = 0;
            
            if (array_length(playback_data) > 0) {
                x = playback_data[0].x_pos;
                y = playback_data[0].y_pos;
                image_index = playback_data[0].img_frame;
                image_xscale = playback_data[0].facing;
            }
        }
    }

    with (oPlayer) {
        x = xstart;
        y = ystart;
        record_data = [];
    }

    with (oPlates) {
        is_pressed = false;
        image_index = 0;
    }
    with (oDoor) {
        is_open = false;
        image_index = 0;
        solid = true;
    }
} 