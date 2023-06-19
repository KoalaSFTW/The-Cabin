
var forest_vp = room_get_viewport(Forest,0);
var regular_vp = room_get_viewport(Entry_Corridor, 0);
var room1_vp = room_get_viewport(First_Room, 0);

if(room == Forest){
draw_sprite_stretched(sprt_textbox,0,1, forest_vp[4] - 55, forest_vp[3]-10, 100);
draw_set_font(font_mc)
draw_text_ext_color(10, forest_vp[4] - 45, text, stringHeight, 1058, c_black, c_black, c_black, c_black, 1);
}

else if(room == First_Room || room == Second_Room || room = Third_Room || room = Fourth_Room){
draw_sprite_stretched(sprt_textbox,0,1, room1_vp[4] + 220, room1_vp[3] + 600, 100);
draw_set_font(font_mc)
draw_text_ext_color(10, room1_vp[4] + 225, text, stringHeight, 1058, c_black, c_black, c_black, c_black, 1);
}

else{
draw_sprite_stretched(sprt_textbox,0,1, regular_vp[4] - 5, regular_vp[3] + 150, 100);
draw_set_font(font_mc)
draw_text_ext_color(10, regular_vp[4], text, stringHeight, 1058, c_black, c_black, c_black, c_black, 1);
}




