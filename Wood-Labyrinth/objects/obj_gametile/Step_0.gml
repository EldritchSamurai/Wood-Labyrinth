/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if (click_cooldown > 0) click_cooldown --;

if is_active {
	image_speed = 0.5;
	
	if animation_end(){
		
		is_active = false;
		
		//change ti loop
		sprite_index = sprite_loop;
		
		//workaroung
		image_speed = 0.5;
		
		//check in outs
		var xx = (x - X_OFFSET) / TILE_W;
		var yy = (y - Y_OFFSET) / TILE_H;
		var game_continue = checkOutputflow(xx,yy);
		var game_win = checkIfWon(xx, yy)
		
		if (game_win){
			obj_game.game_win = true;
		}
		
		//else game over
		if (!game_continue){
			//throw game over
			obj_game.game_over = true;
		}
	}
}