/// @description Insert description here
// You can write your code in this editor
if(room==Kitchen && global.houseState==2)
{visible=true}
else if (room==Kitchen && global.houseState!=2)
{visible=false}

if(room==Kids_Room && global.kidsRoomState==0)
{
	visible=false
}
else if (room==Kids_Room && global.kidsRoomState==1)
{
	if(global.ivanFound==false)
	visible=true
	else 
	visible = false
}

if(room==Kitchen && global.ivanFound == true)
{
	x = 416
	y = 320
	visible = true
}


depth = -y


















