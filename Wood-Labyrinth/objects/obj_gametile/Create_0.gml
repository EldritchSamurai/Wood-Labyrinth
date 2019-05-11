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
game_over = false;

xTo = 0;
yTo = 0;

if (object_index != obj_NtoS){
	randomize();
	var aTile = choose (obj_NtoE, obj_NtoS, obj_NtoW, obj_WtoS, obj_EtoS, obj_WE)
	instance_change(aTile, false);
}
image_speed = 0;