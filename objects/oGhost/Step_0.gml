
if (current_frame < array_length(playback_data)) {
    
    var _data = playback_data[current_frame];
    
    x = _data.x_pos;
    y = _data.y_pos;
    image_index = _data.img_frame;
    image_xscale = _data.facing;
    
    current_frame++;
    
} else {
    //Prolly.. would make the ghost disappear. would check this one later
}