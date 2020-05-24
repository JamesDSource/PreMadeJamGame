switch(state) {
	case PLAYERSTATE.FREE:
		vsp += GRAVITY;

		var dir = keyboard_check(vk_right) - keyboard_check(vk_left);
		hsp = approach(hsp, max_spd * dir, acc);

		if(hsp != 0) image_xscale = sign(hsp);
		if(hsp != 0 && place_meeting(x, y + 1, oBlock)) image_speed = 1;	
		else {
			image_speed = 0;
			image_index = 0;
		}

		// jump
		if(place_meeting(x, y+1, oBlock) && keyboard_check_pressed(ord("Z"))) {
			audio_play_sound(sdPlayer_jump, AUDIO.JUMP, false);
			vsp = jump_force;
			jumping = true;	
		}
		if(place_meeting(x, y+1, oBlock) && vsp >= 0) jumping = false;
		
		if(jumping && vsp < 0 && !keyboard_check(ord("Z"))) vsp = 0;
		
		// bit
		if(keyboard_check_pressed(ord("X")) && collision_line(x, y, x + 8*image_xscale, y, oBlock, false, true) != noone) {
			audio_play_sound(sdPlayer_bite, AUDIO.BITE, false);
			state = PLAYERSTATE.BITE;	
		}
		
		if(portal != noone) state = PLAYERSTATE.PORTAL;
		
		event_inherited();
		break;
		
	case PLAYERSTATE.BITE:
		vsp = 0;
		hsp = 0;
		image_speed = 1;
		if(!keyboard_check(ord("X"))) state = PLAYERSTATE.FREE;
		if(keyboard_check_pressed(ord("Z"))) {
			audio_play_sound(sdPlayer_jump, AUDIO.JUMP, false);
			vsp = jump_force;
			state = PLAYERSTATE.FREE;	
		}
		break;
		
	case PLAYERSTATE.BUBBLE:
		if(bubble != noone) {
			x = bubble.x;	
			y = bubble.y;
			vsp = 0;
			hsp = 0;
		}
		else state = PLAYERSTATE.FREE;
		break;
		
	case PLAYERSTATE.PORTAL:
		x = approach(x, portal.x, 3);
		y = approach(y, portal.y, 3);
		image_angle += 10;
		if(floor(point_distance(x, y, portal.x, portal.y)) == 0) {
			image_xscale = approach(image_xscale, 0, 0.01);	
			image_yscale = approach(image_yscale, 0, 0.01);	
		}
		
		if(image_xscale == 0 && image_yscale == 0) {
			oTransitions.target = portal.target;	
			oTransitions.mode = MODE.CHANGE;
		}
		break;
}

if (i_frame > 0)
	i_frame--;
	
if(mouse_check_button_pressed(mb_left)) instance_create_layer(mouse_x, mouse_y, "Instances", oPortal)