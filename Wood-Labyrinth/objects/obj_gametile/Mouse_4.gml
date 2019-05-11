/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if !is_locked {
	
	var xx = (x -32) / 32;
	var yy = (y -32) /32;
	checkForFreeNeighbor(xx,yy);
	
	if (xTo != 0) || (yTo != 0){
		swapWithNeighbor(xx, yy, xTo, yTo);
	}

}