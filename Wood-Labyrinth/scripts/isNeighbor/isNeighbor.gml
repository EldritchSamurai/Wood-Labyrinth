/// @desc isNeighbor(x1, y1, x2, y2)
/// @arg x1
/// @arg y1
/// @arg x2
/// @arg y2

var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;

if (x1 < 0) || (x1 >= obj_game.gamefield_width) return false;
if (x2 < 0) || (x2 >= obj_game.gamefield_width) return false;
if (y1 < 0) || (y1 >= obj_game.gamefield_width) return false;
if (y2 < 0) || (y2 >= obj_game.gamefield_width) return false;

if (x1 == x2) {
	if ((y1-y2) == 1) || ((y1-y2) == -1)
		return true;
}

if (y1 == y2) {
	if ((x1-x2) == 1) || ((x1-x2) == -1)
		return true;
}

return false;