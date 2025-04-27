if(acionado){
	with(obj_player){
		x = lerp(x,obj_bola.x-100,0.1);
		y = lerp(y,obj_bola.y,0.1);
	}
	with(obj_enemy){
		x = lerp(x,obj_bola.x+100,0.1);
		y = lerp(y,obj_bola.y,0.1);
	}
}

if(instance_exists(obj_particulas)){
	part_particles_clear(obj_particulas.part_sys)

}

