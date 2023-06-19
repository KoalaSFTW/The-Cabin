/// @description Insert description here
// You can write your code in this editor


if(mouse_check_button_pressed(mb_right) && position_meeting(mouse_x, mouse_y, id))
{
	global.reading = true;
	myTextbox = instance_create_layer(x,y, "Textbox", obj_textbox)
	myTextbox.text = "This seems to be the key to the wardrobe in the living room."

	read=true;
}


if(global.reading == false)
{
	instance_destroy(myTextbox)
	myTextbox = noone;
}
if(global.clockkey==false)
{
	instance_destroy()
}



















