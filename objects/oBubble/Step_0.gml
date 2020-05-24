if(place_meeting(x, y, oPlayer)) {
	if(oPlayer.state != PLAYERSTATE.BUBBLE) {
		oPlayer.state = PLAYERSTATE.BUBBLE;
		oPlayer.bubble = id;	
	}
	
	y--;
}
x = round(x);
y = round(y);