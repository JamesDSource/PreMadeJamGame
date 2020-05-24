if(player != noone) {
	//var dist = point_distance(x, y, oPlayer.x, oPlayer.y);
	var ang = wave(-45, 45, 5, 0)
	target_x = oPlayer.x + lengthdir_x(60, ang);
	target_y = oPlayer.y + lengthdir_y(60, ang);
	
}
else if(instance_exists(oPlayer) && collision_line(x, y, oPlayer.x, oPlayer.y, oBlock, false, true) == noone) {
	player = oPlayer;
}



if(hp <= 0) instance_destroy();

mp_potential_step_object(target_x, target_y, spd, oBlock);

if(i_frames > 0) i_frames--;