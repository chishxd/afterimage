
var _player_on_me = place_meeting(x, y, oPlayer);
var _ghost_on_me = place_meeting(x, y, oGhost);

if (_player_on_me || _ghost_on_me) {
    is_pressed = true;
    image_index = 1;
} else {
    is_pressed = false;
    image_index = 0;
}