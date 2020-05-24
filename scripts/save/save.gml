/// @desc save()
ini_open(SAVEFILE);
ini_write_real("stats", "gems", global.gems);
ini_write_real("stats", "health", global.player_health);
ini_write_real("stats", "health_max", global.player_health_max);
ini_close();