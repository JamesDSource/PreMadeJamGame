/// @desc save_settings()
ini_open(SETTINGSFILE);
ini_write_real("settings", "palette", global.palette);
ini_close()