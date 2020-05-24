if(instance_exists(oPlayer) && oPlayer.item == id) {
	x = oPlayer.x + 4*oPlayer.image_xscale + x_offset;
	y = oPlayer.y + 1 + y_offset;
	image_xscale = oPlayer.image_xscale;
	held = true;
}
else {
	vsp += GRAVITY;
	event_inherited();
	held = false;
}