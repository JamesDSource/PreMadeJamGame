var current_page = pages[page];
var current_element = current_page[index];
var up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
var left = keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left);
var right = keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right);
var interact = keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(vk_enter);

if(up) {
	index--;
	if(index < 0) index = array_length_1d(current_page) - 1;	
}
else if(down) {
	index++;
	if(index > array_length_1d(current_page)-1) index = 0;
}

if(up || down) audio_play_sound(sdMenu_scroll, AUDIO.MENU, false);
if(interact) audio_play_sound(sdMenu_select, AUDIO.MENU, false);

switch(current_element[1]) {
	case ELEMENTTYPE.SCRIPT:
		if(interact) script_execute(current_element[2]);
		break;
	case ELEMENTTYPE.TRANSFER:
		if(interact) {
			page = current_element[2];
			index = 0;
		}
		break;
	case ELEMENTTYPE.SLIDER:
		var varibale = variable_global_get(current_element[2]);
		var values = current_element[4];
		
		// finding the index
		var slider_index = 0;
		for(var i = 0; i < array_length_1d(values); i++) {
			if(values[i] == varibale) {
				slider_index = i;
				break;	
			}
		}
		
		// sliding
		if(left) {
			slider_index--;
			if(slider_index < 0) slider_index = array_length_1d(values)-1;
		}
		if(right) {
			slider_index++;
			if(slider_index > array_length_1d(values)-1) slider_index = 0;
		}
		
		// setting the global var
		variable_global_set(current_element[2], values[slider_index]);
		break;
}