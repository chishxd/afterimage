if (game_won == true) {
    var _screen_width = display_get_gui_width();
    var _screen_height = display_get_gui_height();
    
    draw_set_halign(fa_center); 
    draw_set_valign(fa_middle);
    draw_set_color(c_yellow);
    

    draw_text_transformed(_screen_width / 2, _screen_height / 2, "YOU WIN!", 3, 3, 0);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
} 