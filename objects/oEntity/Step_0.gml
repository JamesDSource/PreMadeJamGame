push_out(oBlock);
var h_inst = instance_place(x + hsp, y, oBlock);
if(h_inst != noone && h_inst.object_index != oPlatform) {
	while(!place_meeting(x + sign(hsp), y, oBlock)) x += sign(hsp);
	hsp = 0;
}
var v_inst = instance_place(x, y + vsp, oBlock);
if(v_inst != noone && (v_inst.object_index != oPlatform || (v_inst.bbox_top >= bbox_bottom && !down_platforms))) {
	while(!place_meeting(x, y + sign(vsp), oBlock)) y += sign(vsp);
	vsp = 0;
}

x += hsp;
y += vsp;

x = round(x);
y = round(y);

push_out(oBlock);