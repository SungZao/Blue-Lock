if(!inicializar){
	scr_textos();
	inicializar = !inicializar;
}


if(mouse_check_button_pressed(mb_left) or keyboard_check_pressed(vk_enter)){
	if(pagina < array_length(texto) - 1){
		caractere = 0;
		pagina ++;
	}
	else{
		if(nome == "terceiro texto"){
			var _room_alvo = rm_sala;
			scr_fade(_room_alvo, 60, c_black);
		}
		else{
			global.transicao = 0;
			instance_destroy();
		}
	}
}

switch(nome){
	case "primeiro texto":
		switch(pagina){
			default:
				obj_camera.camera = obj_player;
			break;
			case 0:
				scr_zoom(obj_camera.cam,683,364,0.2);
				obj_camera.x = obj_player.x;
				obj_camera.y = obj_player.y;
			break;
			
			case 2:
				obj_camera.camera = obj_bola;
				obj_camera.x = obj_bola.x;
				obj_camera.y = obj_bola.y;
				//obj_camera.x = lerp(x,obj_bola.x,0.02);
				//obj_camera.y = lerp(y,obj_bola.y,0.02);
			break;
			case 3:
				obj_camera.camera = "Gol";
				obj_camera.x = 1056;
				obj_camera.y = 416;
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
				scr_zoom(view_get_camera(0),546,291,0.2);
			break;
			case 8:
				scr_zoom(view_get_camera(0),1366,728,0.2);
				obj_camera.camera = obj_player;
			break;
		}
	break;
}