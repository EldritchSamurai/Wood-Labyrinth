/// @desc

enum DIRECTIONS{
	NORTH,
	EAST,
	SOUTH,
	WEST
}

enum MODE {
	A,
	B
}

is_active = false;
is_locked = false;
input = ds_list_create();
output = ds_list_create();
WE_tile = false;

game_mode = MODE.A;

xTo = 0;
yTo = 0;

image_speed = 0;

var xx = (x - 32) / 32;
var yy = (y - 32) / 32;	
ds_grid_set(obj_game.gamefield, xx, yy, self);