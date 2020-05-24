enum PAGE {
	MAIN,	
	SETTINGS
}

enum ELEMENTTYPE {
	TRANSFER,
	SCRIPT,
	SLIDER
}

pages[PAGE.MAIN] = [
	["Start Game", ELEMENTTYPE.SCRIPT, start_game],
	["Settings", ELEMENTTYPE.TRANSFER, PAGE.SETTINGS],
	["Quit", ELEMENTTYPE.SCRIPT, quit_game]
]

pages[PAGE.SETTINGS] = [
	["Palette", ELEMENTTYPE.SLIDER, "palette", 
	["Scrubbed", "NES", "Die Farben", "50 Stars", "Noir", "Well", "Taffy"], 
	[PALETTE.SCRUBBED, PALETTE.NES, PALETTE.DIEFARBEN, PALETTE.STARSANDSTRIPES, 
	PALETTE.NOIR, PALETTE.WELL, PALETTE.TAFFY]],
	
	["Back", ELEMENTTYPE.SCRIPT, settings_back]
]
page = PAGE.MAIN;
index = 0;