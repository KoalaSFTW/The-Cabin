/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

if(room==Kids_Room && global.pocketWatch == false)
{
	text = "On top of the wood carvings, wool, and other hobby materials, is a pocket watch. It seems important."
	pocketWatchToGet = true
}
else if (room==Kids_Room && (global.pocketWatch == true || global.openedPocketWatch == true || global.clockkey == true))
{
	text = "Wood carvings, wool and other hobby materials remain."
}

if(room==Kitchen && global.pocketWatch == false)
{
	text = "The fireplace is still burning."
}
else if (room==Kitchen && global.pocketWatch == true)
{
	text = "I threw the pocket watch into the fire and it popped open."
	openPocketWatchToGet = true
	pocketWatchToRemove = true
}

if(room==Living_Room && global.pocketWatch == false)
{
	text = "The fireplace is still burning."
}
else if (room==Living_Room && global.pocketWatch == true)
{
	text = "I threw the pocket watch into the fire and it popped open."
	pocketWatchToRemove = true;
	openPocketWatchToGet = true;
}

if(room==Room8 && global.openedPocketWatch == true)
{
	text = "I changed the clock's hands to match the watch's and the cabinet popped out! Looks like there's a key inside."
	openPocketWatchToRemove = true;
	clockKeyToGet = true
	
} else if (room==Room8 && global.openedPocketWatch == false)
{
	text = "A big grandfather clock, the hands aren't moving. The drawer doesn't open either"
}

if(isWardrobe == true && global.clockkey == false)
{
	text = "This one is locked. I can feel air coming out of it, though."
}
else if ( isWardrobe == true && global.clockkey == true)
{
	text = "I opened the wardrobe with the key, looks like there's a way down inside of it."
	clockKetToRemove = true
	openSesameToDo = true
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
	if(clockKetToRemove = true)
	{
		global.clockkey = false
	}
	if(clockKeyToGet = true)
	{
		global.clockkey = true
	}
	if(openPocketWatchToGet = true)
	{
		global.openedPocketWatch = true
	}
	if(openPocketWatchToRemove = true)
	{
		global.openedPocketWatch = false
	}
	if(pocketWatchToGet = true)
	{
		global.pocketWatch = true
	}
	if(pocketWatchToRemove = true)
	{
		global.pocketWatch = false
	}
	if(openSesameToDo = true)
	{
		global.openSesame = true
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



















