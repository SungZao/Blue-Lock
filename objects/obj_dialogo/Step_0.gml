if(!inicializar){
	scr_textos();
	inicializar = !inicializar;
}

if(mouse_check_button_pressed(mb_left)){
	if(pagina < array_length(texto) - 1)
		pagina ++;
	else{
		global.transicao = 0;
		instance_create_layer(x,y,layer,obj_counter);
		instance_destroy();
	}
}

switch(nome){
	case "primeiro texto":
		switch(pagina){
			default:
				obj_camera.camera = 1;
			break;
			case 0:
				scr_zoom(obj_camera.cam,683,364,0.2);
				obj_camera.x = obj_player.x;
				obj_camera.y = obj_player.y;
			break;
			
			case 2:
				obj_camera.camera = 0;
				obj_camera.x = obj_bola.x;
				obj_camera.y = obj_bola.y;
				//obj_camera.x = lerp(x,obj_bola.x,0.02);
				//obj_camera.y = lerp(y,obj_bola.y,0.02);
			break;
			case 3:
				obj_camera.camera = 0;
				obj_camera.x = 1505;
				obj_camera.y = 62;
			break;
		}
	break;
	
	case "segundo texto":
		switch(pagina){
			default:
				obj_camera.camera = 1;
			break;
			case 2:
				obj_camera.camera = 0;
				obj_camera.x = obj_enemy.x;
				obj_camera.y = obj_enemy.y;
			break;
		}
	break;
}