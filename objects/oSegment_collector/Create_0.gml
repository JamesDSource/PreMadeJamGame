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

segment_rooms = [
	rSegment1,
	rSegment2,
	rSegment3,
	rSegment4,
	rSegment5,
	rSegment6,
	rSegment7,
	rSegment9,
	rSegment10,
	rSegment11,
	rSegment13,
	rSegment14,
	rSegment16,
];

segment = 0;
target_room = rTitle;
global.segment_data = ds_list_create();


room_goto(segment_rooms[segment]);