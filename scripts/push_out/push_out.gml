/// @desc push_out(object)
/// @arg object to push out of
if(place_meeting(x, y, argument[0])) {
	for(var i = 0; i < 1000; i++) {
		// right
		if(!place_meeting(x + i, y, argument[0])) {
			x += i;
			break;
		}
		// left
		if(!place_meeting(x - i, y, argument[0])) {
			x -= i;
			break;
		}
		// top
		if(!place_meeting(x, y - i, argument[0])) {
			y -= i;
			break;
		}
		// down
		if(!place_meeting(x, y + i, argument[0])) {
				y += i;
				break;
		}
		// top left
		if(!place_meeting(x - i, y - i, argument[0])) {
			x -= i;
			y -= i;
			break;
		}
		// top right
		if(!place_meeting(x + i, y - i, argument[0])) {
			x += i;
			y -= i;
			break;
		}
		// down left
		if(!place_meeting(x - i, y + i, argument[0])) {
			x -= i;
			y += i;
			break;
		}
		// down right
		if(!place_meeting(x + i, y + i, argument[0])) {
			x += i;
			y += i;
			break; 
		}
				
	}
}