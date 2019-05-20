/// @desc checkOutputflow(xx, yy)
/// @arg xx
/// @arg yy


var outputflowCorrect = false;
if (object_index == obj_WE) && (image_xscale == -1) {
	var xx = argument0 -1;
}
else {
	var xx = argument0;
}
var yy = argument1;

if (ds_list_find_index(output, DIRECTIONS.WEST) != -1) && xx > 0{
	var nextTile = ds_grid_get(obj_game.gamefield, xx-1, yy);
	if (nextTile != obj_game.FREE) && (ds_list_find_index(nextTile.input, DIRECTIONS.EAST) != -1){
		
		if (nextTile.object_index == obj_WE){
			with (nextTile){
				var index = ds_list_find_index(input, DIRECTIONS.WEST);
				ds_list_delete(input, index);
				var index = ds_list_find_index(output, DIRECTIONS.EAST);
				ds_list_delete(input, index);
				image_xscale = -1;
				x += TILE_W;
			}
		}
		
		outputflowCorrect = true;
		nextTile.is_active = true;
		nextTile.is_locked = true;
	}
}

if (ds_list_find_index(output, DIRECTIONS.EAST) != -1) && xx < (obj_game.gamefield_width - 1){
	var nextTile = ds_grid_get(obj_game.gamefield, xx+1, yy);
	if (nextTile != obj_game.FREE) && (ds_list_find_index(nextTile.input, DIRECTIONS.WEST) != -1){
		
		if (nextTile.object_index == obj_WE){
			with (nextTile){
				var index = ds_list_find_index(input, DIRECTIONS.EAST);
				ds_list_delete(input, index);
				var index = ds_list_find_index(output, DIRECTIONS.WEST);
				ds_list_delete(input, index);
			}
		}
		
		outputflowCorrect = true;
		nextTile.is_active = true;
		nextTile.is_locked = true;
	}
}

if (ds_list_find_index(output, DIRECTIONS.SOUTH) != -1) {
	if (yy < (obj_game.gamefield_height - 1)) {
		var nextTile = ds_grid_get(obj_game.gamefield, xx, yy+1);
		if (nextTile != obj_game.FREE) && (ds_list_find_index(nextTile.input, DIRECTIONS.NORTH) != -1){
			outputflowCorrect = true;
			nextTile.is_active = true;
			nextTile.is_locked = true;
		}
	}
}

return outputflowCorrect;