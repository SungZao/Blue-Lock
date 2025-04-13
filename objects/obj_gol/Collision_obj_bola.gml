if(obj_player.gols = -1){
	instance_create_layer(x,y,"Dialogo",obj_dialogo)
	obj_dialogo.nome = "segundo texto";
}
obj_player.gols ++;
instance_create_layer(1786,1310,"Instances",obj_bola);
instance_destroy(instance_nearest(x,y,obj_bola));
global.transicao = 1;
instance_create_layer(x,y,"Dialogo",obj_txt);


