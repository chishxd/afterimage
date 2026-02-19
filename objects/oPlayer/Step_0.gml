// In oPlayer's Step Event

// --- 1. Get Player Input ---
var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

// --- 2. Calculate Movement and Update Direction ---
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

// --- 3. Move the Player ---
move_and_collide(x_speed, y_speed, oSolid);

// --- 4. Handle Animation ---
var _is_moving = (x_speed != 0 || y_speed != 0);

if (_is_moving) {
    // If we are moving, advance the animation frame
    image_index = image_index + animation_speed;
}

// Set the frame range based on the direction we are facing
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
_frame_end = _frame_start + 3.99; // The end of the 4-frame animation

// If we are not moving, set the sprite to the first frame of the direction
if (!_is_moving) {
    image_index = _frame_start;
}

// Make sure the animation loops within the correct range
if (image_index > _frame_end) {
    image_index = _frame_start;
}
// This handles switching directions mid-animation
if (image_index < _frame_start) {
    image_index = _frame_start;
}