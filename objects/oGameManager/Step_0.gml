
if (game_won == true) exit; 

if (loop_started == false) {
    if (keyboard_check(ord("W")) || keyboard_check(ord("A")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))) {
        loop_started = true;
        audio_play_sound(snd_timer, 1, false);
    }
    exit;
}

time_remaining--;

if (time_remaining <= 0) {
    current_loop++; 
    if (current_loop > 4) {
        scr_reset_loop(true); 
        current_loop = 1; 
    } else {
        scr_reset_loop(false); 
    }
    
    time_remaining = loop_duration_frames;
    
    audio_stop_sound(snd_timer);
    audio_play_sound(snd_timer, 1, false);
}