/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

gamefield_width = 8;
gamefield_height = 8;
gamefield = ds_grid_create(gamefield_width,gamefield_height);
game_over = false;
game_win = false;

enum TILETYPE {
	NTOS,
	WE,
	NTOE,
	NTOW,
	X
}

enum MODE {
	A,
	B
}

global.game_mode = MODE.A;

if (global.game_mode == MODE.B){
	enum GAMESTATE {
		FREE,
		SELECTED
	}
	state = GAMESTATE.FREE;
	
	active_x = -1 
	active_y = -1;
}

FREE = 0;

for (var i = 0; i < gamefield_width; i++){
	for (var j = 0; j < gamefield_height; j++){
		ds_grid_set(gamefield, i,j, FREE);
	}
}

