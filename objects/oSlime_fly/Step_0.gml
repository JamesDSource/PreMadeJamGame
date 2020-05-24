if(player == noone) {
	var player_potent = collision_circle(x, y, vision, oPlayer, false, true);
	if(player_potent != noone && 
	collision_line(x, y, player_potent.x, 
	player_potent.y, oBlock, false, true) == noone) player = player_potent;
	
	target_x = xstart;
	target_y = ystart;
}
else {
	target_x = player.x;
	target_y = player.y;
	
	if(collision_line(x, y, player.x, player.y, oBlock, false, true) == noone && 
	point_distance(x, y, player.x, player.y) < vision) interest = interest_time;
	else interest--;
	
	if(interest <= 0) player = noone;
}

mp_potential_step_object(target_x, target_y, spd, oBlock);

x = round(x);
y = round(y);