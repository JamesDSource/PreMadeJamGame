if(player != noone) {
	var ang = point_direction(x, y, oPlayer.x, oPlayer.y);
	with(instance_create_layer(x, y, "Instances", oBubble_projectile)) {
		angle = ang;
	}
}
alarm[0] = room_speed * 2;