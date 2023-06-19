randomize();
var i = instance_create_layer(room_width + 100, room_height/2 + irandom_range(-100, -50), "Instances", object_cloud);
i.image_speed = 0;
i.image_index = random_range(0, sprite_get_number(i.sprite_index)-1);

if(global.gameOver) exit;

alarm[1] = room_speed * random_range(2/global.speedModifier, 4/global.speedModifier);