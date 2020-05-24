inventory = [
	[sHeart, 0, "Heart", 3, false],
	[sHeart, 1, "Heart Container", 6, false],
	[sBunny, 0, "I-Frame Upgrade", 4, false]
]

width = 0

for(var i = 0; i < array_length_1d(inventory); i++) { 
	var item = inventory[i];
	width += sprite_get_width(item[0])
}


index = 0;