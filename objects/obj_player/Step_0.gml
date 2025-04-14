if(global.transicao == 0){

	#region Movimentação
	hveloc = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*veloc;
	vveloc = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*veloc;

	x += hveloc;
	y += vveloc;
	#endregion


	#region Mudança de Dir
	dir = floor((point_direction(x,y,mouse_x,mouse_y) + 45)/90);
	#endregion

	#region Mudança de Estado e Sprites
	if(estado != "correndo" and estado != "dashing"){
		if(hveloc != 0 or vveloc != 0){
			estado = "andando";
		}else{
			estado = "parado";
		}
	}

	scr_funcoes(spr_parado_frente,spr_parado_direita,spr_parado_tras,spr_andando_frente,spr_andando_direita,spr_andando_tras,spr_correndo_frente,spr_correndo_direita,spr_correndo_tras);
	#endregion

	#region Habilidades
	if(keyboard_check_pressed(vk_shift)){
		if(estado == "andando"){
			estado = "correndo";
		
		}
		else{
			estado = "andando";
		
		}
	}

	if(mouse_check_button_pressed(mb_left))
		scr_chute(forc_chute);
		
	if(keyboard_check_pressed(ord("Q"))){
		switch(habilidades){
			case "Chute Poderoso":
				scr_chute(forc_chute*2)
			break;
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

	scr_habilidades(habilidades);
	#endregion
}

