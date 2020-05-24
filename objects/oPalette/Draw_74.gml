set_palette();

if(global.sPause != noone) draw_sprite(global.sPause, 0, 0, 0);
else draw_surface(application_surface, 0, 0);

shader_reset();