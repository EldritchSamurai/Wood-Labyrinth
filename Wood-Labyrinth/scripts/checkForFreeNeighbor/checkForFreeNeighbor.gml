/// @desc checkForFreeNeighbor(xx, yy)
/// @arg xx
/// @arg yy

var xx = argument0;
var yy = argument1;

xTo = 0;
yTo = 0;

if (xx > 0){
	if (ds_grid_get(obj_game.gamefield,xx-1, yy) == obj_game.FREE) {
		xTo = (-1);
		yTo = 0;
	}		
}

if (xx < (obj_game.gamefield_width -1)){
	if (ds_grid_get(obj_game.gamefield,xx+1, yy) == obj_game.FREE) {
		xTo = 1;
		yTo = 0;
	}		
}

if (yy > 0){
	if (ds_grid_get(obj_game.gamefield,xx, yy-1) == obj_game.FREE) {
		xTo = 0;
		yTo = (-1);
	}		
}

if (yy < (obj_game.gamefield_height - 1)){
	if (ds_grid_get(obj_game.gamefield,xx, yy+1) == obj_game.FREE) {
		xTo = 0;
		yTo = 1;
	}		
}