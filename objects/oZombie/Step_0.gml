vsp += GRAVITY;

hsp = approach(hsp, max_spd * dir, acc);
if(hsp != 0) image_xscale = sign(hsp);

if(place_meeting(x + sign(hsp), y, oBlock)) 
	dir *= -1;

event_inherited();