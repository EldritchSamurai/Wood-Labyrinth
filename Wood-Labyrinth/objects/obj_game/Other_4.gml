/// @desc start game

if (!audio_is_playing(_MGJ_Music_Loop_19_5_11)){
	audio_play_sound(_MGJ_Music_Loop_19_5_11, 2, true);
}
if (!audio_is_playing(_MGJ_SD_Running_Sap_Loop)){
	audio_play_sound(_MGJ_SD_Running_Sap_Loop, 2, true);
}

var aTile = ds_grid_get(gamefield, 0, 0)
aTile.is_active = true;
aTile.is_locked = true;