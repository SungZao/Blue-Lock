if(global.transicao == 0){
dir = floor((point_direction(x,y,obj_bola.x,obj_bola.y) + 45)/90);
scr_funcoes(spr_enemy_parado_frente,spr_enemy_parado_direita,spr_enemy_parado_tras,spr_enemy_andando_frente,spr_enemy_andando_direita,spr_enemy_andando_tras,spr_enemy_correndo_frente,spr_enemy_correndo_direita,spr_enemy_correndo_tras);
if(global.posse != 2)
	mp_potential_step(obj_bola.x,obj_bola.y,veloc,false)
else
	mp_potential_step(obj_gol.x,obj_gol.y,veloc,false)


if estamina > 40{
	estado = "correndo";
	veloc = 3;
}
else
	veloc = 1;
	
}
