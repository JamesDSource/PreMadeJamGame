move_layer("Player");

max_spd = 2;
acc = 0.2;
jump_force = -3;
jumping = false;

i_frame = 0;

enum PLAYERSTATE {
	FREE,	
	BITE,
	BUBBLE,
	PORTAL,
	SHOPPING,
	DEAD
}

state = PLAYERSTATE.FREE;

flash_t = 0;
flash = false;

bubble = noone;
portal = noone;
item = noone;

load();