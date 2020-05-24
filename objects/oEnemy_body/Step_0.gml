vsp += GRAVITY;
y += vsp;

if(!instance_exists(oCamera) || collision_rectangle(oCamera.x - VIEWWIDTH/2, oCamera.y - VIEWHEIGHT/2, oCamera.x + VIEWWIDTH/2, oCamera.y + VIEWHEIGHT/2, id, false, false) == noone) {
	instance_destroy();
}

image_angle += 5;