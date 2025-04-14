switch (room){
	case rm_menu:
		switch(index){
			case 0:
				var _room_alvo = rm_tutorial;
				scr_fade(_room_alvo, 60, c_black);
			break;
			
			case 1:
				game_end();
			break;
		}
	
	break;
	
	case rm_sala:
		switch(index){
			case 0:
				escolha = "Habilidades"
				
			break;
			
			case 1:
			
			break;
			
			case 2:
				
				var _room_alvo2 = rm_partida;
				draw_set_color(c_white);
				scr_fade(_room_alvo2, 60, c_black);
				
			break;
		}
	
	break;
}