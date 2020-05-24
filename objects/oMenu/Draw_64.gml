var current_page = pages[page];
var margin = 5;

draw_set_font(fGame);
draw_set_valign(fa_middle);

set_palette();
for(var i = 0; i < array_length_1d(current_page); i++) {
	// left side
	draw_set_halign(fa_right);
	
	var current_element = current_page[i];
	var seperation = 15;
	
	var selected = false;
	if(index == i) {
		draw_set_color(make_color_rgb(100, 100, 100));
		selected = true;	
	}
	else draw_set_color(make_color_rgb(200, 200, 200));
	
	draw_text_shadow(VIEWWIDTH/2 - margin, VIEWHEIGHT/2 + i*seperation, current_element[0]);
	
	// right side
	draw_set_halign(fa_left);
	
	switch(current_element[1]) {
		case ELEMENTTYPE.SLIDER:
			var global_var = variable_global_get(current_element[2]);
			var values = current_element[4];
			var strings = current_element[3];
			
			for(var ii = 0; ii < array_length_1d(values); ii++) {
				if(values[ii] == global_var) {
					var str = strings[ii];
					draw_text_shadow(VIEWWIDTH/2 + margin, VIEWHEIGHT/2, "<" + str + ">");
					break;				
				}
			}
			break;
	}
}
shader_reset();