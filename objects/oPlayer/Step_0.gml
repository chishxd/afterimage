var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

x_speed = (_key_right - _key_left) * movement_speed;
y_speed = (_key_down - _key_up) * movement_speed;

// Update facing direction based on which key was pressed last
// This gives priority to vertical movement
if (_key_down) {
    facing = DIRECTION.DOWN;
} else if (_key_up) {
    facing = DIRECTION.UP;
} else if (_key_right) {
    facing = DIRECTION.RIGHT;
} else if (_key_left) {
    facing = DIRECTION.LEFT;
}

move_and_collide(x_speed, y_speed, oSolid);

var _is_moving = (x_speed != 0 || y_speed != 0);

if (_is_moving) {
    image_index = image_index + animation_speed;
}

var _frame_start = 0;
var _frame_end = 0;

switch (facing) {
    case DIRECTION.DOWN:
        _frame_start = 0; // Row 1 starts at frame 0
        break;
    case DIRECTION.UP:
        _frame_start = 4; // Row 2 starts at frame 4
        break;
    case DIRECTION.RIGHT:
        _frame_start = 8; // Row 3 starts at frame 8
        break;
    case DIRECTION.LEFT:
        _frame_start = 12; // Row 4 starts at frame 12
        break;
}
_frame_end = _frame_start + 3.99;

if (!_is_moving) {
    image_index = _frame_start;
}

if (image_index > _frame_end) {
    image_index = _frame_start;
}

if (image_index < _frame_start) {
    image_index = _frame_start;
}

var _current_state = {
    x_pos : x,
    y_pos : y,
    img_frame : image_index,
    facing : image_xscale
};

array_push(record_data, _current_state);


var _nearest_door = instance_nearest(x, y, oDoor);

if (_nearest_door != noone) {
    if (_nearest_door.is_open == true && distance_to_object(_nearest_door) < 5) {
        
        if (instance_exists(oGameManager)) {
            oGameManager.game_won = true;
        }
        
        visible = false; 
    }
}