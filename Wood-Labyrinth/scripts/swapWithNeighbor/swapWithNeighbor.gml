/// @desc swapWithNeighbor(x1, y1, x2, y2)
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

//help varible
var help1 = ds_grid_get(obj_game.gamefield, x1, y1);
var help2 = ds_grid_get(obj_game.gamefield, x2, y2);
var help1_x = help1.x;
var help1_y = help1.y;

//shift self
if (help1 != obj_game.FREE){
	with (help1){
		x = help2.x;
		y = help2.y;
	}
}
ds_grid_set(obj_game.gamefield, x2, y2, help1);

//shift other
if (help2 != obj_game.FREE){
	with (help2){
		x = help1_x;
		y = help1_y;
	}
}
ds_grid_set(obj_game.gamefield, x1, y1, help2);