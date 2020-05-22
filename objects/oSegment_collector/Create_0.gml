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
	rSegment3
];

segment = 0;
target_room = rRandom_test;
global.segment_data = ds_list_create();


room_goto(segment_rooms[segment]);