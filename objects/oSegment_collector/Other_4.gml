if(room == segment_rooms[segment]) {
		
	var data = array_create(0);
		
	#region instances
		var instances = array_create(0);
		for(var ii = 0; ii < instance_count; ii++) {
			var inst = instance_id[ii];
			if(inst.object_index != oSegment_data && !inst.persistent) {
				var instance_data = array_create(0)
				instance_data[INSTANCEDATA.OBJECT] = inst.object_index; 
				instance_data[INSTANCEDATA.X] = inst.x;
				instance_data[INSTANCEDATA.Y] = inst.y;
				
				instances[array_length_1d(instances)] = instance_data;
			}
		}
		data[SEGMENTDATA.INSTANCES] = instances;
	#endregion
	#region open sides
		var open_sides = array_create(0);
		open_sides[SIDE.TOP] = oSegment_data.top_open;
		open_sides[SIDE.BOTTOM] = oSegment_data.bottom_open;
		open_sides[SIDE.LEFT] = oSegment_data.left_open;
		open_sides[SIDE.RIGHT] = oSegment_data.right_open;
		data[SEGMENTDATA.OPEN] = open_sides;
	#endregion
	
	if(room = rSegment_fill) global.fill_segment = data;
	else if(oSegment_data.portal) {
		var portal_index = 0;
		if(oSegment_data.level_one) portal_index = 1;
		if(oSegment_data.level_two) portal_index = 2;
		if(oSegment_data.level_three) portal_index = 2;
		global.portal_segment[portal_index] = data;
	}
	else {
		if(oSegment_data.level_one) ds_list_add(global.level_one_segment_data, data);	
		if(oSegment_data.level_two) ds_list_add(global.level_two_segment_data, data);	
		if(oSegment_data.level_three) ds_list_add(global.level_three_segment_data, data);	
	}
	
	if(segment < array_length_1d(segment_rooms)-1) {
		segment++;
		room_goto(segment_rooms[segment]);
	}
	else room_goto(target_room);
}