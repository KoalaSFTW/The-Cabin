function scr_ground_check(){
	if(duckKey){
		ducking = true;
		jumping = false;
		falling = true;
	}
	
	if(place_meeting(x, y + 1, object_block)){
		vspd = 0;
		jumping = false;
		falling = false;
		
		if(!duckKey){
			ducking = false;
		}
		
		if((jumpKey || jumpKeyAlt) && !duckKey){
			jumping = true;
			vspd = -jspd;
		}
	}
	else{
		if(ducking){
			vspd += grav *3
		}
		else{
			if(vspd < termVelocity){
				vspd += grav;
			}
			if(sign(vspd) == 1){
				falling = true
			}
		}
	}
}