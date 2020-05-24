switch(mode) {
	case MODE.ENTER:
		percent = approach(percent, 0, spd);
		if(percent == 0) mode = MODE.OFF;
		break;
	
	case MODE.CHANGE:
	case MODE.NEXT:
	case MODE.QUIT:
		percent = approach(percent, 100, spd);
		if(percent == 100) {
			if(mode == MODE.QUIT) game_end();
			else if(mode == MODE.NEXT) room_goto_next();
			else if(target != noone) room_goto(target);
			mode = MODE.ENTER;
		}
		break;
	
}