if(global.gameOver) {exit; score = 0;}

scr_detect_key();
scr_jump_check();
scr_ground_check();
scr_collision_check();
scr_set_sprite();
