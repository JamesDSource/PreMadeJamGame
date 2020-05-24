if(i_frame != 0) {
	flash_t--;
	if(flash_t <= 0) {
		flash = !flash;
		flash_t = 10;	
	}
	
	if(flash) sprite_index = sDog_flash;
	else sprite_index = sDog;
}
else sprite_index = sDog;

draw_self();