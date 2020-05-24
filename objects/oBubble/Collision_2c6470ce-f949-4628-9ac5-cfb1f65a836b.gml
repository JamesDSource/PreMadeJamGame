if(place_meeting(x, y, oPlayer) && other.object_index != oPlatform) {
	sprite_index = noone;
	oPlayer.bubble = noone;
	x = xstart;
	y = ystart;
	alarm[0] = room_speed;
}