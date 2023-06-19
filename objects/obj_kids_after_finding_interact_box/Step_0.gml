/// @description Insert description here
// You can write your code in this editor


/// @description Insert description here
// You can write your code in this editor

visible = false

if(room==Kids_Room && global.kidsRoomState==1)
{
	text="Drat! You found me! I'll wait for you back in the kitchen."
	ivanToBeFound = true
	visible = true
}

if(room==Living_Room && global.livingRoomState==1)

{
	text = "Darn... You got me. I'll wait for you back in the kitchen."
	mariaToBeFound = true
	visible = true
}

if(room==Kitchen && 
((global.mariaFound == true && global.ivanFound == false) 
|| (global.mariaFound == false && global.ivanFound == true)))
{
	if(global.mariaFound == true )
	{
		x = obj_maria.x +13.5
		y = obj_maria.y - 15
	}
	else if (global.ivanFound == true)
	{
		x = obj_ivan.x +15.5
		y = obj_ivan.y -15
	}
	text = "You still have to find my sibling!"
	visible = true
}

if (room==Kitchen && global.mariaFound == true && global.ivanFound == true)
{
		text = "Alright! You win so I'll tell you a secret! Our parents went down the living room wardrobe, can you find them for us?"
		visible = true
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
	if(ivanToBeFound==true)
	{
		global.ivanFound=true
	}
	if(mariaToBeFound==true)
	{
		global.mariaFound=true	
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
