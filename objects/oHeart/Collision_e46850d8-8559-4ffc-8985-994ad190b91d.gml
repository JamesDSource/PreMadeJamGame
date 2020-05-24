if(global.player_health < global.player_health_max) {
	audio_play_sound(sdGem_pickup, AUDIO.PICKUP, false);
	global.player_health++;
	instance_destroy();
}