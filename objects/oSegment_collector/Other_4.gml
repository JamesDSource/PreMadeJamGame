if(room == segment_rooms[segment]) {
		
	var data = array_create(0);
		
	#region instances
		var instances = array_create(0);
		for(var ii = 0; ii < instance_count; ii++) {
			var inst = instance_id[ii];
			if(inst.object_index != oSegment_data) {
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

	ds_list_add(global.segment_data, data);
	if(segment < array_length_1d(segment_rooms)-1) {
		segment++;
		room_goto(segment_rooms[segment]);
	}
	else room_goto(target_room);
}