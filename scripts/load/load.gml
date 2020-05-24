/// @desc load()
ini_open(SAVEFILE);
global.gems = ini_read_real("stats", "gems", 0);
global.player_health = ini_read_real("stats", "health", 6);
global.player_health_max = ini_read_real("stats", "health_max", 6);
ini_close();