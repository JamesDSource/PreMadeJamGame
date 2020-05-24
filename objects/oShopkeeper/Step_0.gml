if(instance_exists(oPlayer) && oPlayer.state = PLAYERSTATE.SHOPPING) {
	if(keyboard_check_pressed(vk_left)) index--;
	if(keyboard_check_pressed(vk_right)) index++;
	index = clamp(index, 0, array_length_1d(inventory)-1);
	
	
	if(keyboard_check_pressed(ord("Z"))) {
		var item = inventory[index];
		var price = item[3];
		var available = !item[4];
		
		if(available && price <= global.gems) {
			global.gems -= price;
			
			switch(item[2]) {
				case "Heart":
					if(global.player_health < global.player_health_max) {
						global.player_health++;	
					}
					break;
				case "Heart Container":
					global.player_health_max++;
					break;
				case "I-Frame Upgrade":
					break;
				
			}
			
			item[4] = true;
			inventory[index] = item;
		}
		
	}
}