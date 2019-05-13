/// @desc unselectTiles()

for (var i = instance_number(obj_selected) - 1; i > (-1); i--){
	with (instance_find(obj_selected, i)) instance_destroy();
}

for (var i = instance_number(obj_possible_tile) - 1; i > (-1); i--){
	with (instance_find(obj_possible_tile, i)) instance_destroy();
}