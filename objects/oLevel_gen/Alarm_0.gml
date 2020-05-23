// loop through the spaces and create the segments
if(segment_index < ds_list_size(spaces)) {
	var space = spaces[| segment_index];
	var x_ = space[0];
	var y_ = space[1];
	var current_segment = map[x_, y_];
	var instances = current_segment[SEGMENTDATA.INSTANCES];
	for(var i = 0; i < array_length_1d(instances); i++) {
		var instance = instances[i];
		var spawn_x = instance[INSTANCEDATA.X];
		var spawn_y = instance[INSTANCEDATA.Y];
		var obj = instance[INSTANCEDATA.OBJECT];
		instance_create_layer(spawn_x + (x_*ROOMWIDTH), spawn_y + (y_*ROOMHEIGHT), "Instances", obj);
	}
	segment_index++;
	alarm[0] = 1;
}