if(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)){
	index--;
	if (index < 0){
		index = op_max - 1;
	}
}
if(keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)){
	index++;
	if (index > op_max - 1){
		index = 0;
	}
}
