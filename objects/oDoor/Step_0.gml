// oDoor Step Event

var _total_plates = ds_list_size(my_plates);
var _plates_pressed_count = 0;

// Loop through every plate ID in our list
for (var i = 0; i < _total_plates; i++) {
    var _plate_id = my_plates[| i]; // Get the instance ID of the plate

    // Safety check: does this plate actually exist in the room?
    if (instance_exists(_plate_id)) {
        // If the plate's "is_pressed" variable is true, add to our count
        if (_plate_id.is_pressed == true) {
            _plates_pressed_count++;
        }
    }
}

// Now, check if all plates are pressed
// We also check if _total_plates > 0 to prevent doors with no plates being open by default
if (_total_plates > 0 && _plates_pressed_count == _total_plates) {
    is_open = true;
} else {
    is_open = false;
}


// --- This part is the same as before ---
// Update sprite and collision based on the 'is_open' state
if (is_open) {
    image_index = 1; // "Open" sprite
    solid = false;
} else {
    image_index = 0; // "Closed" sprite
    solid = true;
}