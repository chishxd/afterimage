// oGameManager Create Event

// Loop duration in seconds
loop_duration_seconds = 10;

// Convert duration to game frames (steps)
var _fps = game_get_speed(gamespeed_fps);
loop_duration_frames = loop_duration_seconds * _fps;

time_remaining = loop_duration_frames;

current_loop = 1;