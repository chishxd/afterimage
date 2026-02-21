var _fps = game_get_speed(gamespeed_fps);
loop_duration_seconds = 10;
loop_duration_frames = loop_duration_seconds * _fps;
time_remaining = loop_duration_frames;
current_loop = 1;

game_won = false;

loop_started = false; 
