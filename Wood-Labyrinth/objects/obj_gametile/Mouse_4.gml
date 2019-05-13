/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if !is_locked {
	
	switch (global.game_mode){
		case (MODE.A):
			var xx = (x -32) / 32;
			var yy = (y -32) /32;
			checkForFreeNeighbor(xx,yy);
	
			if (xTo != 0) || (yTo != 0){
				swapWithFreeNeighbor(xx, yy, xTo, yTo);
				var aSwitchSOund = choose (_MGJ_SD_Switch_Tile_1, _MGJ_SD_Switch_Tile_2, _MGJ_SD_Switch_Tile_3, _MGJ_SD_Switch_Tile_4, _MGJ_SD_Switch_Tile_5);
				audio_sound_pitch(aSwitchSOund, choose(0.8,1.0,1.2));
				audio_play_sound(aSwitchSOund, 4, false);
			}
			break;
			
		case (MODE.B):
			switch (obj_game.state) {
					
				case (GAMESTATE.FREE):
					var xx = (x -32) / 32;
					var yy = (y -32) / 32;
					selectTile(xx, yy);
					obj_game.active_x = xx;
					obj_game.active_y = yy;
					obj_game.state = GAMESTATE.SELECTED;
					break;
				
				case (GAMESTATE.SELECTED):
					if (obj_game.active_x != -1) && (obj_game.active_y != -1){
						var xx = (x -32) / 32;
						var yy = (y -32) /32;
						//if is neighbor -> swap
						if (isNeighbor(obj_game.active_x, obj_game.active_y, xx, yy)){
							swapWithNeighbor(obj_game.active_x, obj_game.active_y, xx, yy);
							var aSwitchSOund = choose (_MGJ_SD_Switch_Tile_1, _MGJ_SD_Switch_Tile_2, _MGJ_SD_Switch_Tile_3, _MGJ_SD_Switch_Tile_4, _MGJ_SD_Switch_Tile_5);
							audio_sound_pitch(aSwitchSOund, choose(0.8,1.0,1.2));
							audio_play_sound(aSwitchSOund, 4, false);
						}
					}
					
					//unselect
					unselectTiles();
					obj_game.active_x = -1;
					obj_game.active_y = -1;
					obj_game.state = GAMESTATE.FREE;
					break;
					
			}
			break;
				
	}
	

}