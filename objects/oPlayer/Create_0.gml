max_spd = 2;
acc = 0.2;
jump_force = -3;
jumping = false;

global.gems = 0;
global.player_health_max = 3;
global.player_health = 3;
i_frame = 0;
i_frame_max = 120;

enum PLAYERSTATE {
	FREE,	
	BITE,
	BUBBLE,
	PORTAL
}

state = PLAYERSTATE.FREE;

flash_t = 0;
flash = false;

bubble = noone;
portal = noone;