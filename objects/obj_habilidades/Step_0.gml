if(mouse_check_button_pressed(mb_left))
	acionado = true;


if(acionado){
	if(mouse_check_button(mb_left))
			alarm[0] = 60;
	global.posse = 0;
	with(obj_bola){
		x = lerp(x,obj_cursor.x,0.1)
		y = lerp(y,obj_cursor.y,0.1);
	}
}