vsp += GRAVITY;

var dir = keyboard_check(ord("D")) - keyboard_check(ord("A"));
hsp = approach(hsp, max_spd * dir, acc);

if(hsp != 0) image_xscale = sign(hsp);

// jump
if(place_meeting(x, y+1, oBlock) && keyboard_check_pressed(vk_space)) vsp = -3;


if(place_meeting(x + hsp, y, oBlock)) {
	while(!place_meeting(x + sign(hsp), y, oBlock)) x += sign(hsp);
	hsp = 0;
}
if(place_meeting(x, y + vsp, oBlock)) {
	while(!place_meeting(x, y + sign(vsp), oBlock)) y += sign(vsp);
	vsp = 0;
}

x += hsp;
y += vsp;