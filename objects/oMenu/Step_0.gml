var current_page = pages[page];
var current_element = current_page[index];
var up = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up);
var down = keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down);
var interact = keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter);

if(up) {
	index--;
	if(index < 0) index = array_length_1d(current_page) - 1;	
}
else if(down) {
	index++;
	if(index > array_length_1d(current_page)-1) index = 0;
}


switch(current_element[1]) {
	case ELEMENTTYPE.SCRIPT:
		if(interact) script_execute(current_element[2]);
	case ELEMENTTYPE.TRANSFER:
		break;
}