enum PAGE {
	MAIN,	
	SETTINGS
}

enum ELEMENTTYPE {
	TRANSFER,
	SCRIPT
}

pages[PAGE.MAIN] = [
	["Start Game", ELEMENTTYPE.SCRIPT, start_game],
	["Settings", ELEMENTTYPE.TRANSFER, PAGE.SETTINGS],
	["Quit", ELEMENTTYPE.SCRIPT, quit_game]
]

pages[PAGE.SETTINGS] = [
	["Back", ELEMENTTYPE.TRANSFER, PAGE.MAIN]
]

page = PAGE.MAIN;
index = 0;