draw_set_color(make_color_rgb(255,255,255));
draw_set_font(font_mg);
draw_text( 970, 1, string(score));

if(global.gameOver){
draw_sprite_stretched(spr_leaderboard, 0, room_width/2 + 50, room_height/2 - 130, 320,160);
}

if(global.exitstate){
draw_set_color(make_color_rgb(255,255,255));
draw_set_font(font_mg);
draw_text( room_width/2, room_height/2 + 100, "Are you certain that you want to quit? (Y/N)");

global.minigametext = false;
}