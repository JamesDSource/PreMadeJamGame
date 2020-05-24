shader_set(shBunny);

if(instance_exists(oPlayer) && oPlayer.state = PLAYERSTATE.SHOPPING) {
	var draw_x = x - width/2;
	for(var i = 0; i < array_length_1d(inventory); i++) {
		var item = inventory[i];
		
		var square = 0;
		if(i == index) square = 1;
		draw_sprite_ext(sSquare, square, draw_x, bbox_top, 1.5, 1.5, 0, c_white, 1);
		
		draw_sprite(item[0], item[1], draw_x, bbox_top);
		
		if(i == index) {
			draw_set_halign(fa_center);
			draw_set_valign(fa_bottom);
			
			draw_set_color(make_color_rgb(200, 200, 200));
			
			var ending = " (" + string(item[3]) + ")";
			if(item[4]) {
				ending = " (SOLD)"
				draw_set_color(make_color_rgb(100, 100, 100));
			}
			draw_text_shadow(x, bbox_top - 5, item[2] + ending)
		}
		draw_x += sprite_get_width(item[0]);
	}
}

shader_reset();