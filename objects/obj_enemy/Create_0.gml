if(global.tempo == 1){
if(global.transicao == 0){

	switch(global.posse){
		default:
			move_and_collide(obj_bola.x,obj_bola.y,obj_wall)
		break;
		case 2:
			move_and_collide(obj_gol.x,obj_gol.y,obj_wall)
		break;
	}




}
}