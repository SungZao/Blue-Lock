if(instance_exists(obj_particulas)){
	part_particles_clear(obj_particulas.part_sys)
	instance_destroy(obj_particulas);
}


obj_player.gols ++;
instance_create_layer(672,416,"Instances",obj_bola);
instance_destroy(instance_nearest(x,y,obj_bola));


