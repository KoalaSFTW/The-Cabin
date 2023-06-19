/// @description Insert description here
// You can write your code in this editor

x+=xspeed;
if(xspeed<5)
xspeed+=0.03


if(x>obj_player_main.x-250&&obj_player_main.walkSpeed!=4.5)
{
	obj_player_main.walkSpeed=4.5;
}

if(place_meeting(x,y,obj_player_main))
{
	obj_player_main.visible = false;
	room_goto(Game_Over)
	instance_destroy()
	audio_play_sound(monster_sound,1,false)
}


