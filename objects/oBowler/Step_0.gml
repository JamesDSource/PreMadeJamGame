vsp += GRAVITY;

if(instance_exists(oPlayer) && collision_line(x, y, oPlayer.x, y, oBlock, false, true) == noone && collision_line(x, y, oPlayer.x, y, oPlayer, false, true) != noone)
{
    if (oPlayer.x >= x)
        dir = 1;
    else
        dir = -1;
}

hsp = approach(hsp, max_spd * dir, acc);
if(hsp != 0) image_xscale = sign(hsp);

event_inherited();