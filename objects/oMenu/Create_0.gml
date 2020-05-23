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

page = PAGE.MAIN;
index = 0;