max_spd = 2;
acc = 0.2;
jump_force = -3;
jumping = false;

global.playerHealthMax = 3;
global.playerHealth = 3;
global.playerHealthLast = global.playerHealth;
i_frame = 0;
i_frame_max = 120;

enum PLAYERSTATE {
	FREE,	
	BITE
}

state = PLAYERSTATE.FREE;