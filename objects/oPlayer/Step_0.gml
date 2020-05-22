vsp += GRAVITY;

var dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
hsp = approach(hsp, max_spd * dir, acc);

if(hsp != 0) {
	image_xscale = sign(hsp);
	image_speed = 1;	
}
else {
	image_speed = 0;
	image_index = 0;
}

// jump
if(place_meeting(x, y+1, oBlock) && keyboard_check_pressed(vk_space)) vsp = -4;

event_inherited();

if (keyboard_check(ord("K")))
	global.playerHealth -= 1;