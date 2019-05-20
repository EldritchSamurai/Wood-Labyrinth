/// @desc selectTile(xx, yy)
/// @arg xx
/// @arg yy

var xx = argument0;
var yy = argument1;

//animation
instance_create_layer(x,y, "Selectors", obj_selected);

if (xx > 0){
	instance_create_layer(x-TILE_W,y, "Selectors", obj_possible_tile);	
}

if (xx < (obj_game.gamefield_width -1)){
	instance_create_layer(x+TILE_W,y, "Selectors", obj_possible_tile);	
}

if (yy > 0){
	instance_create_layer(x,y-TILE_H, "Selectors", obj_possible_tile);		
}

if (yy < (obj_game.gamefield_height - 1)){
	instance_create_layer(x,y+TILE_H, "Selectors", obj_possible_tile);		
}