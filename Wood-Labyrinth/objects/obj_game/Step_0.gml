/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if game_over {
	for (var i = 0; i < instance_number(obj_gametile); i++){
		var aTile = instance_find(obj_gametile, i);
		aTile.is_locked = true;
	}
}