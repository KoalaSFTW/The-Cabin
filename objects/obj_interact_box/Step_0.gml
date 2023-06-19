/// @description Insert description here
// You can write your code in this editor

if(imSupposedToDisappear == true)
{
	if(global.houseState>1)
	{
		instance_destroy()
	}
}



if(place_meeting(x,y,obj_player_main)&&global.indicated==false)
{
	indicator = instance_create_layer(obj_player_main.x-15,obj_player_main.y-75,"Textbox",obj_e_indicator)
	global.indicated = true;
}

if(!place_meeting(x,y,obj_player_main)&&instance_exists(indicator))
{
	instance_destroy(indicator)
	global.indicated = false;
}


if(place_meeting(x,y,obj_player_main) && keyboard_check(ord("E")) && global.reading == false)
{
	global.reading = true;
	myTextbox = instance_create_layer(x,y, "Textbox", obj_textbox)
	myTextbox.text = text;
	read=true;
	if(changeState==true)
	{
		global.houseState++;
		changeState=false;
	}
}
if(global.reading == false)
{
	instance_destroy(myTextbox)
	myTextbox = noone;
}
if(read==true)
{
	visible = false;
}