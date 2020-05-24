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

segment_rooms = [rSegment_fill, rSegment_portal, rSegment_portal2];
for(var r = 1; r <= 3; r++) {
	for(var c = 1; c <= 25; c++) {
		var rm = asset_get_index("rSegment" + string(r) + "_" + string(c));
		if(rm != -1) segment_rooms[array_length_1d(segment_rooms)] = rm;
	}
}


segment = 0;
target_room = rTitle;
global.level_one_segment_data = ds_list_create();
global.level_two_segment_data = ds_list_create();
global.level_three_segment_data = ds_list_create();


room_goto(segment_rooms[segment]);