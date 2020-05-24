var current_page = pages[page];

draw_set_font(fGame);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(var i = 0; i < array_length_1d(current_page); i++) {
	var current_element = current_page[i];
	var seperation = 20;
	
	if(index == i) draw_set_color(make_color_rgb(200, 200, 200));
	else draw_set_color(make_color_rgb(100, 100, 100));
	
	draw_text(VIEWWIDTH/2, VIEWHEIGHT/2 + i*seperation, current_element[0]);
}