if(place_meeting(x, y, oPlayer)) {
	if(oPlayer.state != PLAYERSTATE.BUBBLE) {
		oPlayer.state = PLAYERSTATE.BUBBLE;
		oPlayer.bubble = id;	
	}
	
	y--;
	
	if(place_meeting(x, y, oBlock)) {
		sprite_index = noone;
		oPlayer.bubble = noone;
		x = xstart;
		y = ystart;
		alarm[0] = room_speed;
	}
}