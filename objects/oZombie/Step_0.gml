vsp += GRAVITY;

hsp = approach(hsp, max_spd * dir, acc);
if(hsp != 0) image_xscale = sign(hsp);

var floor_check_x;
if(dir == 1) floor_check_x = bbox_right;
else floor_check_x = bbox_left;

if(place_meeting(x + sign(hsp), y, oBlock) || collision_line(floor_check_x, bbox_bottom, floor_check_x, bbox_bottom + 3, oBlock, false, true) == noone) 
	dir *= -1;

event_inherited();