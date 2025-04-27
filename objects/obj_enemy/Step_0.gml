if(global.transicao == 0){
if(global.tempo == 1){
	
	
	
	if(global.posse != 2){
	    mp_potential_step(obj_bola.x,obj_bola.y,veloc,false)
		dir = floor((point_direction(x,y,obj_bola.x,obj_bola.y)+90)/180);
	}
	else{
	    mp_potential_step(obj_gol.x,obj_gol.y,veloc,false)
		dir = floor((point_direction(x,y,obj_gol.x,obj_gol.y)+90)/180);
	}


	scr_funcoes(spr_inimigoparado,spr_inimigocorrendo,spr_inimigochutando);
	if estamina > 40{
	    estado = "correndo";
	}
	else{
		estado = "andando";
	}
}else{
	image_speed = 0;
}
}