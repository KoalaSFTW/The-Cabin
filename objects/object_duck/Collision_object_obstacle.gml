global.gameOver = true;
grav = 0;
global.speedModifier = 0;
image_speed = 0;
sprite_index = sprt_duck_dead;
	

if(!instance_exists(object_replay)){
	instance_create_layer(room_width/2, room_height/2, "Instances", object_replay);
	instance_create_layer( 20, 20, "Instances", object_exit);
}

with(object_obstacle) image_speed = 0;