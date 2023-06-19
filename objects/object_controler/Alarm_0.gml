randomize();
var count = irandom_range(1,2);

var i = instance_create_layer(room_width + 50, room_height - 55, "instances", object_obstacle);
i.sprite_index = choose(sprt_frog, sprt_cattails, sprt_bird);
switch (i.sprite_index){
    case sprt_frog:
    case sprt_cattails:
        i.image_speed = 0;
        i.image_index = random_range(0, sprite_get_number(i.sprite_index)-1);

        if(global.speedModifier > 1.5){
            if(count == 2){
                var j =  instance_create_layer(room_width + 50, room_height - 55, "instances", object_obstacle);
                j.sprite_index = choose(sprt_frog, sprt_cattails);
                j.image_speed = 0;
                j.image_index = random_range(0, sprite_get_number(i.sprite_index)-1);
            }
        }
    break;
    default:
    i.image_speed = 1
    i.y = choose (room_height - 85, room_height - 105, room_height - 115);

}

if(global.gameOver) exit;

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);