 var _total_plates = ds_list_size(my_plates);
var _plates_pressed_count = 0;

for (var i = 0; i < _total_plates; i++) {
    var _plate_id = my_plates[| i];

    if (instance_exists(_plate_id)) {

        if (_plate_id.is_pressed == true) {
            _plates_pressed_count++;
        }
    }
}


if (_total_plates > 0 && _plates_pressed_count == _total_plates) {
    is_open = true;
} else {
    is_open = false;
}


if (is_open) {
    image_index = 1;
    solid = false;
} else {  
    image_index = 0;
    solid = true;
}