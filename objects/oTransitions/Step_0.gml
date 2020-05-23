switch(mode) {
	case MODE.ENTER:
		percent = approach(percent, 0, spd);
		if(percent == 0) mode = MODE.OFF;
		break;
	
	case MODE.CHANGE:
	case MODE.QUIT:
		percent = approach(percent, 100, spd);
		if(percent == 100) {
			if(mode == MODE.QUIT) game_end();	
			else {
				mode = MODE.ENTER;
				room_goto(target);
			}
		}
		break;
	
}