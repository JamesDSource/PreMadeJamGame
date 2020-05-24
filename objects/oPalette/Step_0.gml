switch(global.palette) {
	case PALETTE.SCRUBBED:
		global.pal_black = [0.2, 0.2, 0.2];
		global.pal_white = [0.6, 0.6, 0.6];
		global.pal_dkgray = [58/255, 50/255, 119/255];
		global.pal_ltgray = [103/255, 114/255, 169/255];
		break;
	case PALETTE.NES:
		global.pal_black = [15/255, 56/255, 15/255];
		global.pal_white = [155/255, 188/255, 15/255];
		global.pal_dkgray = [48/255, 98/255, 48/255];
		global.pal_ltgray = [139/255, 172/255, 15/255];
		break;
	case PALETTE.DIEFARBEN:
		global.pal_black = [0, 0, 0];
		global.pal_white = [170/255, 85/255, 0];
		global.pal_dkgray = [170/255, 0, 0]
		global.pal_ltgray = [0.0, 170/255, 0];
		break;
	case PALETTE.STARSANDSTRIPES:
		global.pal_black = [1, 0, 0];
		global.pal_white = [1, 1, 1];
		global.pal_dkgray = [0, 0, 1]
		global.pal_ltgray = [0.4, 0.4, 1];
		break;
}