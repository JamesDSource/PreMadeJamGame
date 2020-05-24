if(place_meeting(x, y, oPlayer)) {
	if(oPlayer.state != PLAYERSTATE.BUBBLE) {
		oPlayer.state = PLAYERSTATE.BUBBLE;
		oPlayer.bubble = id;	
	}
	
	var inst =  instance_place(x, y, oBlock);
	if(inst != noone && inst.object_index != oPlatform) {
		sprite_index = noone;
		oPlayer.bubble = noone;
		x = xstart;
		y = ystart;
		alarm[0] = room_speed;
		if(permadeath) instance_destroy();
	}
	y--;
}
x = round(x);
y = round(y);