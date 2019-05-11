/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if is_active {
	image_speed = 0.5;
	
	if animation_end(){
		
		is_active = false;
		
		//change ti loop
		sprite_index = sprite_loop;
		
		//workaroung
		image_speed = 0;
		
		//check in outs
		var xx = (x-32)/32;
		var yy = (y-32)/32;
		var game_continue = checkOutputflow(xx,yy);
		
		//else game over
		if (!game_continue){
			//throw game over
			game_over = true;
		}
	}
}