push_out(oBlock);

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

x = round(x);
y = round(y);