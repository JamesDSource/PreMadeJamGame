/// @description toggle pause
paused = !paused

if(paused) {
	sPause = sprite_create_from_surface(application_surface, 0, 0, surf_w, surf_h, false, false, 0, 0);
	
	application_surface_draw_enable(false);

	for(var i = 0; i < array_length_1d(pauseables); i++) instance_deactivate_object(pauseables[i]);	
}
else {
	sprite_delete(sPause);
	sPause = noone;
	
	application_surface_draw_enable(true);
	
	instance_activate_all();
}
