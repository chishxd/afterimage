
time_remaining--;

if (time_remaining <= 0) {
    current_loop++; 
    
    
    if (current_loop > 4) {
        scr_reset_loop(true); 
        current_loop = 1;
    } else {
        scr_reset_loop(false); 
    }
    
    // Reset the timer
    time_remaining = loop_duration_frames;
}