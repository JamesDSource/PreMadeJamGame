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

// remove health
if (keyboard_check(ord("K")) && i_frame == 0)
	global.playerHealth -= 1;

// i_frames after damage
if (global.playerHealth != global.playerHealthLast)
{
	global.playerHealthLast = global.playerHealth;
	i_frame = i_frame_max;
}

if (i_frame > 0)
	i_frame--;