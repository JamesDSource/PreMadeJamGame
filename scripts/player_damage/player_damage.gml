/// @desc player_damage(damage, knockback)
/// @arg damage
/// @arg knockback

var damage = argument[0];
var knockback = argument[1];


if(instance_exists(oPlayer)) {
	with(oPlayer) {
		if(i_frame == 0) {
			global.player_health -= damage;
			global.player_health = min(global.player_health, global.player_health_max);
			
			if(global.player_health == 0) {
				state = PLAYERSTATE.DEAD;
				alarm[0] = room_speed * 5; 
			}
			
			
			var angle = point_direction(other.x, other.y, x, y);
			hsp = lengthdir_x(knockback, angle);
			vsp = lengthdir_y(knockback, angle);
			
			audio_play_sound(sdPlayer_hit, AUDIO.DAMAGE, false);
			
			i_frame = global.i_frames;
		}
	}
}