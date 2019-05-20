/// @desc

enum DIRECTIONS{
	NORTH,
	EAST,
	SOUTH,
	WEST
}

is_active = false;
is_locked = false;
input = ds_list_create();
output = ds_list_create();
WE_tile = false;

xTo = 0;
yTo = 0;

click_cooldown = 0;

image_speed = 0;

var xx = (x - X_OFFSET) / TILE_W;
var yy = (y - Y_OFFSET) / TILE_H;
ds_grid_set(obj_game.gamefield, xx, yy, self);