var rand = irandom_range(1, 2);
if(rand == 1) instance_create_depth(x, y, depth, oHeart);
else if(rand == 2) instance_create_depth(x, y, depth, oGem);

event_inherited();