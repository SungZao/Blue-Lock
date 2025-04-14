if(global.transicao == 0){


	hveloc = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*veloc;
	vveloc = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*veloc;

if (place_meeting(x + hveloc, y, colisorese)){
	while (!place_meeting(x + sign(hveloc), y, colisorese)){
		x += sign(hveloc);
	}
	hveloc = 0;
}
	x += hveloc;
if (place_meeting(x, y + vveloc, colisorese)){
	while (!place_meeting(x, y + sign(vveloc), colisorese)){
		y += sign(vveloc);
	}
	vveloc = 0;
}
	y += vveloc;

	dir = floor((point_direction(x,y,mouse_x,mouse_y) + 45)/90);


	if(estado != "correndo" and estado != "dashing"){
		if(hveloc != 0 or vveloc != 0){
			estado = "andando";
		}else{
			estado = "parado";
		}
	}

	scr_funcoes(spr_parado_frente,spr_parado_direita,spr_parado_tras,spr_andando_frente,spr_andando_direita,spr_andando_tras,spr_correndo_frente,spr_correndo_direita,spr_correndo_tras);



	if(keyboard_check_pressed(vk_shift)){
		if(estado == "andando"){
			estado = "correndo";
		
		}
		else{
			estado = "andando";
		
		}
	}

	if(mouse_check_button_pressed(mb_left)){
		if(global.posse == 1){
			podepegar = false
			alarm[0] = 120
			obj_bola.direction = point_direction(x,y,mouse_x,mouse_y);
			obj_bola.speed = 5;
			global.posse = 0;
		}
	}

	if(keyboard_check_pressed(vk_space)){
		if(podedash){
			alarm[1] = 16;
			estado = "dashing";
			alarm[2] = 120;
			podedash = false;
		}
	}


}
