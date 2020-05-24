set_palette();

var scale = (percent/100) * (VIEWWIDTH/sprite_w);
draw_sprite_ext(sTransition_circle, 0, VIEWWIDTH/2, VIEWHEIGHT/2, scale, scale, 0, c_white, 1.0);

shader_reset()