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
	["Palette", ELEMENTTYPE.SLIDER, "palette", ["Scrubbed", "NES", "Die Farben"], [PALETTE.SCRUBBED, PALETTE.NES, PALETTE.DIEFARBEN]],
	["Back", ELEMENTTYPE.TRANSFER, PAGE.MAIN]
]
page = PAGE.MAIN;
index = 0;