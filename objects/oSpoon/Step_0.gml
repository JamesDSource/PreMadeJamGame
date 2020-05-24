if(held) {
	if(keyboard_check_pressed(ord("X")) && thrust_cooldown_timer <= 0) {
		thrust_timer = thrust_time;
		thrust_cooldown_timer = thrust_cooldown_time;
	}

	var target_thrust = 0
	if(thrust_timer > 0) {
		target_thrust = thrust_offset * image_xscale;
		thrust_timer--;
	}
	x_offset = approach(x_offset, target_thrust, thrust_spd);

	if(thrust_cooldown_timer > 0) thrust_cooldown_timer--;

	var enemy_inst = instance_place(x, y, oEnemy);
	if(enemy_inst != noone && thrust_timer > 0) attack_enemy(enemy_inst); 
}
event_inherited();