vsp += GRAVITY;

if(instance_exists(oPlayer) && collision_line(x, y, oPlayer.x, oPlayer.y, oBlock, false, true) == noone && collision_line(x, y, oPlayer.x, oPlayer.y, oPlayer, false, true) != noone)
{
	alert = true;
	known_player_x = oPlayer.x;
}

if (alert)
{
	if (known_player_x >= x)
        dir = -1;
    else
        dir = 1;
	
	if(place_meeting(x, y+1, oBlock))
		vsp = -3;
}
	
hsp = approach(hsp, max_spd * dir, acc);
if(hsp != 0) image_xscale = sign(hsp);

event_inherited();