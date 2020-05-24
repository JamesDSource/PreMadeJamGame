event_inherited();
image_xscale = 1;

if(held && keyboard_check_pressed(ord("X"))) {
	oPlayer.item = noone;
	hsp = oPlayer.image_xscale * throw_force;
}

if(abs(hsp) > 2) {
	image_angle += 5;
	var enemy = instance_place(x, y, oEnemy);
	if(enemy != noone) attack_enemy(enemy);
}