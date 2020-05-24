instance_activate_all();

var block_dist = 500;
var entity_dist = 300;

with(oBlock) {
	if(point_distance(x, y, other.x, other.y) > block_dist) instance_deactivate_object(id);
}

with(oEntity) {
	if(point_distance(x, y, other.x, other.y) > entity_dist) instance_deactivate_object(id);
}

alarm[0] = 10;