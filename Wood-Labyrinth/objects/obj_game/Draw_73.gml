/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if (game_win){
	draw_set_color (c_green);
	draw_set_font(ft_menu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(160,160, "YOU WON!");
}

if(game_over) && (!game_win){
	draw_set_color (c_red);
	draw_set_font(ft_menu);
	draw_set_halign(fa_middle);
	draw_set_valign(fa_middle);
	draw_text(160,160, "GAME OVER");
	
	draw_set_color(c_white);
	draw_text_transformed(160,180, "-press R to restart-", 0.7, 0.7, 0);
}