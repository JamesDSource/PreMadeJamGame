if(!instance_exists(oSegment_data) && !instance_exists(oPlayer)) {
	instance_create_layer(x, y, "Instances", oPlayer);
	instance_create_layer(x, y, "Instances", oCamera);
	instance_destroy();
}
else alarm[0] = 2;