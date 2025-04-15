if(obj_player.gols = -1){
	instance_create_layer(x,y,"Dialogo",obj_dialogo)
	obj_dialogo.nome = "segundo texto";
}
if(obj_player.gols = 1){
	instance_create_layer(x,y,"Dialogo",obj_dialogo)
	obj_dialogo.nome = "terceiro texto";
}

if(object_exists(obj_particulas)){
	part_system_destroy(obj_particulas.part_sys)
	instance_destroy(obj_particulas);
}


obj_player.gols ++;
instance_create_layer(1786,1310,"Instances",obj_bola);
instance_destroy(instance_nearest(x,y,obj_bola));
global.transicao = 1;
instance_create_layer(x,y,"Dialogo",obj_gol_txt);


