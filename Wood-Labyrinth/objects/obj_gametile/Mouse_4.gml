/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if !is_locked {
	
	switch (game_mode){
		case (MODE.A):
			var xx = (x -32) / 32;
			var yy = (y -32) /32;
			checkForFreeNeighbor(xx,yy);
	
			if (xTo != 0) || (yTo != 0){
				swapWithNeighbor(xx, yy, xTo, yTo);
				var aSwitchSOund = choose (_MGJ_SD_Switch_Tile_1, _MGJ_SD_Switch_Tile_2, _MGJ_SD_Switch_Tile_3, _MGJ_SD_Switch_Tile_4, _MGJ_SD_Switch_Tile_5);
				audio_sound_pitch(aSwitchSOund, choose(0.8,1.0,1.2));
				audio_play_sound(aSwitchSOund, 4, false);
			}
			break;
	}
	

}