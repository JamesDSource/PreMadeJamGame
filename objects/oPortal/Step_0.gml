y = round(ystart + wave(-5, 5, 4, 0));

image_xscale = wave(0.8, 1.1, 2, 0);
image_yscale = wave(0.8, 1.1, 2, 0);

image_angle += 5;

if(place_meeting(x, y, oPlayer) && oPlayer.portal != id) {
	oPlayer.portal = id;
	save();
}