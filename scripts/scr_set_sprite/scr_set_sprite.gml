function scr_set_sprite(){
	if(jumping || falling){
		sprite_index = sprt_duck_standing;
	}
	if(ducking){
		sprite_index = sprt_duck_ducking;
		image_speed = 2;
	}
	
	if(!jumping && !falling && !ducking){
		sprite_index = sprt_duck_running;
		image_speed = 2;
	}
}