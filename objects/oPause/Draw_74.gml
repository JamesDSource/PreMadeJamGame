if(paused && sPause != noone) {
	display_set_gui_size(surf_w, surf_h);
	draw_sprite(sPause, 0, 0, 0);
	display_set_gui_size(VIEWWIDTH, VIEWHEIGHT);
}