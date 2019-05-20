/// @desc swapWithFreeNeighbor(xx, yy, x_sign, y_sign)
/// @arg xx
/// @arg yy
/// @arg x_sign
/// @arg y_sign
/// 

//shift self
x += argument2*TILE_W;
y += argument3*TILE_H;
ds_grid_set(obj_game.gamefield, argument0 + argument2, argument1 + argument3, self);

//shift other
ds_grid_set(obj_game.gamefield, argument0, argument1, obj_game.FREE);