if(global.transicao == 0){

	#region Movimentação
	hveloc = (keyboard_check(ord("D")) - keyboard_check(ord("A")))*veloc;
	vveloc = (keyboard_check(ord("S")) - keyboard_check(ord("W")))*veloc;


if (place_meeting(x + hveloc, y, obj_wall)){
	while (!place_meeting(x + sign(hveloc), y, obj_wall)){
		x += sign(hveloc);
	}
	hveloc = 0;
}
x += hveloc;

if (place_meeting(x, y + vveloc, obj_wall)){
	while (!place_meeting(x, y + sign(vveloc), obj_wall)){
		y += sign(vveloc);
	}
	y = 0;
}
y += vveloc;
	#endregion


	#region Mudança de Dir
	dir = floor((point_direction(x,y,mouse_x,mouse_y)+90)/180);
	#endregion

	#region Mudança de Estado e Sprites
	if(estado != "correndo" and estado != "dashing"){
		if(hveloc != 0 or vveloc != 0){
			estado = "andando";
		}else{
			estado = "parado";
		}
	}

	scr_funcoes(spr_parado,spr_correndo,spr_chutando);
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

	if(mouse_check_button_pressed(mb_left)){
		audio_play_sound(snd_chute,1,false);
		scr_chute(forc_chute);
	}
		
	if(keyboard_check_pressed(ord("Q"))){
		switch(global.habilidades){
			case "Chute Poderoso":
				instance_create_layer(x,y,"Instances",obj_particulas,{part: ps_ChutePoderoso})
				scr_shake(30);
				audio_play_sound(snd_ChutePoderoso,2,false,10);
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

	
	#endregion
}

