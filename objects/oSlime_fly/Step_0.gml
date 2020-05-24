if(player == noone) {
	var player_potent = collision_circle(x, y, vision, oPlayer, false, true);
	if(player_potent != noone && 
	collision_line(x, y, player_potent.x, 
	player_potent.y, oBlock, false, true) == noone) player = player_potent;
}
else mp_potential_step_object(player.x, player.y, spd, oBlock);	
