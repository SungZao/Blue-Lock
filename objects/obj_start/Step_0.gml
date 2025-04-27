switch(obj_player.gols){
	case 0:
		instance_create_layer(obj_bola.x+100,obj_bola.y,layer,obj_enemy);
		instance_create_layer(x,y,layer,obj_org)
		instance_create_layer(x,y,"Dialogo",obj_dialogo)
		obj_dialogo.nome = "segundo texto";
		obj_player.gols = 1;	
	break;
	case 2:
		instance_create_layer(x,y,"Dialogo",obj_dialogo)
		obj_dialogo.nome = "terceiro texto";
		instance_destroy();
	break;
}

