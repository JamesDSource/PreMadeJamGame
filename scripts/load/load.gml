/// @desc load()
ini_open(SAVEFILE);
global.gems = ini_read_real("stats", "gems", 0);
global.player_health = ini_read_real("stats", "health", 5);
ini_close();