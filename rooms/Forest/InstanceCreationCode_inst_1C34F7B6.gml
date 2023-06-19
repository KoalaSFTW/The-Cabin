visible=false
text = "Something's running behind me. I need to get going."
if(mouse_check_button_pressed(mb_left) && place_meeting(x,y,obj_player_main))
audio_play_sound(monster_sound,1,false)