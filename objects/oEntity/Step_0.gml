push_out(oBlock);
var h_inst = instance_place(x + hsp, y, oBlock);
if(h_inst != noone && h_inst.object_index != oPlatform) {
	var steps = 0;
	while(!place_meeting(x + sign(hsp), y, oBlock) && steps < hsp * 2) {
		x += sign(hsp);
		steps++;
	}
	hsp = 0;
}
var v_inst = instance_place(x, y + vsp, oBlock);
if(v_inst != noone && (v_inst.object_index != oPlatform || (v_inst.bbox_top >= bbox_bottom && !down_platforms))) {
	var steps = 0;
	while(!place_meeting(x, y + sign(vsp), oBlock) && steps < vsp * 2) {
		y += sign(vsp);
		steps++;
	}
	vsp = 0;
}

x += hsp;
y += vsp;

x = round(x);
y = round(y);

push_out(oBlock);