randomize();
#macro ROOMWIDTH 192
#macro ROOMHEIGHT 160

for(var r = 0; r < 100; r++) {
	for(var c = 0; c < 100; c++) {
		map[r, c] = -1;
	}
}

switch(level) {
	case 1:
		level_data = global.level_one_segment_data;
		break;
	
	case 2:
		level_data = global.level_two_segment_data;
		break;
	
}

map[50, 50] = ds_list_random(level_data);
spaces = ds_list_create();
ds_list_add(spaces, [50, 50]);

repeat(segment_amount) {
	// loops through the spaces and looks
	// for an opening
	var space = -1;
	var requirement = -1;
	while(space == -1 && requirement == -1) {
		// get a random segment
		var coords = ds_list_random(spaces);
		var segment = map[coords[0], coords[1]];
		
		// check if it has any free spaces and openings
		var openings = segment[SEGMENTDATA.OPEN];
		var open_spaces = ds_list_create();
		// loops through the sides to check if they're available
		for(var i = 0; i < array_length_1d(openings); i++) {
			if(openings[i]) {
				var x_offset = 0;
				var y_offset = 0;
				switch(i) {
					case SIDE.TOP:
						y_offset = -1;
						break;
					case SIDE.BOTTOM:
						y_offset = 1;
						break;
					case SIDE.LEFT:
						x_offset = -1;
						break;
					case SIDE.RIGHT:
						x_offset = 1;
						break;
				}
				
				var x_ = clamp(coords[0] + x_offset, 0, 99);
				var y_ = clamp(coords[1] + y_offset, 0, 99);
				// if the space if free, add it to the list
				if(map[x_, y_] == -1) ds_list_add(open_spaces, [x_, y_, i]);
			}
		}
		if(ds_list_size(open_spaces) > 0) { // if there is any open spaces
			// choose a random open side
			var random_side = ds_list_random(open_spaces);
			space = [random_side[0], random_side[1]];
			// finds the opposite side
			switch(random_side[2]) {
				case SIDE.TOP:
					requirement = SIDE.BOTTOM;
					break;
				case SIDE.BOTTOM:
					requirement = SIDE.TOP;
					break;
				case SIDE.LEFT:
					requirement = SIDE.RIGHT;
					break;
				case SIDE.RIGHT:
					requirement = SIDE.LEFT;
					break;
			}
		}
		ds_list_destroy(open_spaces);
	}
	
	// find a random segment with the required open side
	var added_segment = -1;
	while(added_segment == -1) {
		var test_segment = ds_list_random(level_data);
		var test_openings = test_segment[SEGMENTDATA.OPEN];
		if(test_openings[requirement]) added_segment = test_segment;
	}
	
	// adds the segment to the map
	map[space[0], space[1]] = added_segment;
	ds_list_add(spaces, [space[0], space[1]]);
}

// portal room
var portal_space = ds_list_random(spaces);
map[portal_space[0], portal_space[1]] = global.portal_segment[level];

// filling the edges
for(var i = 0; i < ds_list_size(spaces); i++) {
	var space = spaces[| i]
	var x_ = space[0];
	var y_ = space[1];
	if(map[clamp(x_ + 1, 0, 99), y_] == -1) {
		map[x_ + 1, y_] = global.fill_segment;
		ds_list_add(spaces, [x_ + 1, y_]);	
	}
	if(map[clamp(x_ - 1, 0, 99), y_] == -1) {
		map[x_ - 1, y_] = global.fill_segment;
		ds_list_add(spaces, [x_ - 1, y_]);	
	}
	if(map[x_, clamp(y_ + 1, 0, 99)] == -1) {
		map[x_, y_ + 1] = global.fill_segment;
		ds_list_add(spaces, [x_, y_ + 1]);	
	}
	if(map[x_, clamp(y_ - 1, 0, 99)] == -1) {
		map[x_, y_ - 1] = global.fill_segment;
		ds_list_add(spaces, [x_, y_ - 1]);	
	}
}

alarm[0] = 2;
segment_index = 0;