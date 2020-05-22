hsp = max_spd * dir;
if(hsp != 0) image_xscale = -sign(hsp);

if(place_meeting(x + hsp, y, oBlock))
{
	dir *= -1;
}

x += hsp;