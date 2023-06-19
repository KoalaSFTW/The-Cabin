/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
visible = false

if (room==Kitchen && global.houseState==2 && global.proposalgot == false)
{
	text = "Hey, don't steal food! Now that you ate it, you have to play with us. Talk to my sibling when you want to play."
	proposalToBeGotten = true;
	visible = true
}
if(room==Kitchen && global.houseState==2 && global.proposalgot == true)
{
	text = "Alright! Lets play Hide and Seek! We'll go hide now!"
	changeState = true;
	visible = true
}

if (room==Kids_Room && global.houseState==3 && global.kidsRoomState==0)
{
	text = "There's hair sticking from under the bed, looks like someone's there."
	changeKidsState=true
	visible = true
}
else if (room==Kids_Room && global.kidsRoomState !=0 )
{
	text= "A blue bed, it seems to be the boy's."
	visible = true
}
else if (room=Kids_Room && global.houseState <= 2)
{
	text = "A blue bed, it seems to be the boy's."
	visible = true
}


if(room==Living_Room && global.houseState==3 && global.livingRoomState == 0)
{
	text = "The door is slightly ajar. There's a kid inside!"
	changeLivingState=true
	visible = true
}
else if(room==Living_Room && global.livingRoomState!=0)
{
	text = "Apparently they store their books in a wardrobe. Weird"
	visible = true
}
else if (room=Living_Room && global.houseState <= 2)
{
	text = "Apparently they store their books in a wardrobe. Weird"
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
	if(changeKidsState==true)
	{
		global.kidsRoomState++;
		changeKidsState=false
	}
	if(changeLivingState==true)
	{
		global.livingRoomState++;
		changeLivingState=false;
	}
	if(proposalToBeGotten==true)
	{
		global.proposalgot=true
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























