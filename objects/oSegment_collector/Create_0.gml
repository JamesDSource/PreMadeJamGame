enum SEGMENTDATA {
	INSTANCES,
	OPEN
}
enum INSTANCEDATA {
	OBJECT,
	X,
	Y
}

enum SIDE {
	TOP,
	BOTTOM,
	LEFT,
	RIGHT
}

segment_rooms = [rSegment_fill, rSegment_portal];
var done = false;
var i = 1;
while(!done) {
	var rm = asset_get_index("rSegment" + string(i));
	if(rm == -1) done = true;
	else {
		segment_rooms[array_length_1d(segment_rooms)] = rm;
		i++;	
	}
}


segment = 0;
target_room = rTitle;
global.level_one_segment_data = ds_list_create();
global.level_two_segment_data = ds_list_create();


room_goto(segment_rooms[segment]);