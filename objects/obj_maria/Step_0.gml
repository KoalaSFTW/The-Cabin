/// @description Insert description here
// You can write your code in this editor
if(room==Kitchen && global.houseState==2)
{visible=true}
else if (room==Kitchen && global.houseState!=2)
{visible=false}

if(room==Living_Room && global.livingRoomState == 0)
{visible=false}
else if (room==Living_Room && global.livingRoomState == 1)
{
	if(global.mariaFound==false)
	visible = true
	else
	{visible = false}
	
}

if(room == Kitchen && global.mariaFound == true)
{
	x = 416
	y = 256
	visible = true}

depth = -y

















