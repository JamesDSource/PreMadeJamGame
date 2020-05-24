/// @desc load_settings()
ini_open(SETTINGSFILE);
global.palette = ini_read_real("settings", "palette", PALETTE.SCRUBBED);
ini_close()