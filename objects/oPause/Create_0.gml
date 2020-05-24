event_inherited();
pages[PAGE.MAIN] = [
	["Resume", ELEMENTTYPE.SCRIPT, resume_game],
	["Settings", ELEMENTTYPE.TRANSFER, PAGE.SETTINGS],
	["End Run", ELEMENTTYPE.SCRIPT, end_run]
]

paused = false;
global.sPause = noone;

surf_w = surface_get_width(application_surface);
surf_h = surface_get_height(application_surface);

pauseables = [
	oEntity,
	oBlock,
	oCamera
]