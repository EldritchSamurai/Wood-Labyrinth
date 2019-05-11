/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

gamefield_width = 8;
gamefield_height = 8;
gamefield = ds_grid_create(gamefield_width,gamefield_height);

enum TILETYPE {
	NTOS,
	WE,
	NTOE,
	NTOW,
	X
}

FREE = 0;

for (var i = 0; i < gamefield_width; i++){
	for (var j = 0; j < gamefield_height; j++){
		ds_grid_set(gamefield, i,j, FREE);
	}
}

for (var i = 0; i < instance_number(obj_gametile); i++){
	var aTile = instance_find(obj_gametile, i);
	var xx = (aTile.x - 32) / 32;
	var yy = (aTile.y - 32) / 32;	
	ds_grid_set(gamefield, xx, yy, aTile);
}

