/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_right) && position_meeting(mouse_x, mouse_y, id))
{
	global.reading = true;
	myTextbox = instance_create_layer(x,y, "Textbox", obj_textbox)
	myTextbox.text = "A golden pocket watch, on it are engraved the words: 'May this record the time at which our love burned the brightest.' I can't open it."

	read=true;
}


if(global.reading == false)
{
	instance_destroy(myTextbox)
	myTextbox = noone;
}
if(global.pocketWatch==false)
{
	instance_destroy()
}




















