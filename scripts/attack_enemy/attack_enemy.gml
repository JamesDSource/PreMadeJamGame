/// @desc attack_enemy(instance)
/// @arg instance

var inst = argument[0];

if(inst.object_index == oWizard) {
	if(inst.i_frames <= 0) {
		inst.hp--;
		inst.i_frames = 30;	
	}
}
else instance_destroy(inst);