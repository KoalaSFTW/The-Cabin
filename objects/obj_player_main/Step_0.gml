/// @description Player movement, more

// Check keys for movement
moveRight = keyboard_check(ord("D"));
moveUp = keyboard_check(ord("W"));
moveLeft = keyboard_check(ord("A"));
moveDown = keyboard_check(ord("S"));


if(visible){
vx = ((moveRight - moveLeft) * walkSpeed);
if(room!=Forest)
{vy = ((moveDown - moveUp) * walkSpeed);}
}


if(room==Game_Over)
instance_destroy()


if(room==Forest&&!audio_is_playing(rain_sound))
{
	audio_play_sound(rain_sound,2,true)
}
else if(room!=Forest && audio_is_playing(rain_sound))
{
	audio_stop_sound(rain_sound)
}

if((room==Kitchen || room==Living_Room)&&!audio_is_playing(fire_place))
{
	audio_play_sound(fire_place,4,true)
}else if((room!=Kitchen && room!=Living_Room) && audio_is_playing(fire_place))
{
	audio_stop_sound(fire_place)
}


if((room==Entry_Corridor||room==Kitchen||room==Room8||room==Living_Room||room==Kids_Room)&&!audio_is_playing(house_ambience))
{
	audio_play_sound(house_ambience,2,true)
} else if ((room!=Entry_Corridor&&room!=Kitchen&&room!=Room8&&room!=Living_Room&&room!=Kids_Room)&&audio_is_playing(house_ambience))
{
	audio_stop_sound(house_ambience)
}



if((room==First_Room||room==Second_Room||room==Third_Room||room==Fourth_Room)&&!audio_is_playing(basement_sounds))
{
	audio_play_sound(basement_sounds,2,true)
}	else if((room!=First_Room&&room!=Second_Room&&room!=Third_Room&&room!=Fourth_Room)&&audio_is_playing(basement_sounds))
{
	audio_stop_sound(basement_sounds)	
}



// Calculate movement
if(visible){
vx = ((moveRight - moveLeft) * walkSpeed);
if(room!=Forest)
{vy = ((moveDown - moveUp) * walkSpeed);}
}



// Disable movement while reading a textbox
if(global.reading == true)
{
	vx = 0
	vy = 0
}

if(global.reading == true && mouse_check_button(mb_left))
{
	global.reading = false
	audio_play_sound(click,1,false)
}



if (vx == 0 && vy == 0) {
	sprite_index = blue_character_idle;
	audio_pause_sound(footsteps_forest)
	audio_pause_sound(footsteps_house)

	}


if (vx != 0 || vy != 0) {
	
	
	if(room==Forest&&global.playerSounds==false){
	audio_play_sound(footsteps_forest,3,true)
	global.playerSounds=true
	}
	else if(room!=Forest&&global.playerSounds==false){
	audio_play_sound(footsteps_house,3,true)
	global.playerSounds=true
	}
	if(global.playerSounds=true && room=Forest)
	{
		audio_resume_sound(footsteps_forest)
	}
	else if(global.playerSounds==true && room!=Forest)
	{
		audio_resume_sound(footsteps_house)
	}
	
	
	if !collision_point(x+vx,y,obj_par_enviroment,true,true) {
		x += vx;
		}
	if !collision_point(x,y+vy,obj_par_enviroment,true,true) {
		y += vy;
		}

	
	//Change walking Sprite based on direction
	if ((vx > 0 || vy> 0) || (vx<0 || vy<0)) {
		sprite_index = blue_chatacter_walk_right;
		dir = 0;
		}
if (vx < 0) {
		sprite_index = blue_character_walk_left;
		dir = 2;
	}	
	}
if(keyboard_check(ord("Z")))
{
	room_goto(Debug)
}

if(keyboard_check(ord("P")))
{
    room_goto(Minigame_Room)
}
/*if(room == Minigame_Room) visible = false;
else visible = true;

if(global.exitstate){
if(room == Minigame_Room && keyboard_check(ord("Y"))){
    room_goto(Third_Room);
    visible = true;
    global.exitstate = false;
}
else if(room = Minigame_Room && keyboard_check(ord("N"))){
global.minigametext = true;
score = 0;
room_restart();
global.exitstate = false;
}
}*/




if(keyboard_check(vk_escape))
{
	escCounter++
	if(escCounter>=2)
	game_end()
}

depth = -y;

/*if(global.pocketWatch == true && !instance_exists(obj_pocketwatch))
{
	pocketWatch = instance_create_depth(obj_player_main.x,obj_player_main.y-50,-100,obj_pocketwatch)

}
if(instance_exists(obj_pocketwatch))
{
		obj_pocketwatch.visible = false
		if(keyboard_check(vk_tab))
		{
			obj_pocketwatch.visible = true
		}
		pocketWatch.y = obj_player_main.y-80
	    pocketWatch.x = obj_player_main.x-15
}




if(global.openedPocketWatch == true && !instance_exists(obj_pocketwatch_open))
{
	openPocketWatch = instance_create_depth(obj_player_main.x,obj_player_main.y-50,-100,obj_pocketwatch_open)

}
if(instance_exists(obj_pocketwatch_open))
{
		obj_pocketwatch_open.visible = false
		if(keyboard_check(vk_tab))
		{
			obj_pocketwatch_open.visible = true
		}
		openPocketWatch.y = obj_player_main.y-80
	    openPocketWatch.x = obj_player_main.x-15
}



if(global.clockkey == true && !instance_exists(obj_pocketwatch))
{
	key = instance_create_depth(obj_player_main.x,obj_player_main.y-50,-100,obj_key)

}
if(instance_exists(obj_key))
{
		obj_key.visible = false
		if(keyboard_check(vk_tab))
		{
			obj_key.visible = true
		}
		key.y = obj_player_main.y-80
	    key.x = obj_player_main.x-15
}





