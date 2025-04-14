switch (room){
	case rm_menu:
		if (index == 1){
			game_end();
		}

		if (index == 0){
			var _room_alvo = rm_tutorial;
			scr_fade(_room_alvo, 60, c_black);
		}
	break;
	
	case rm_sala:
		if (index == 0){
								
		}

		if (index == 1){
								
		}
							
		if (index == 2){
			draw_set_color(c_white);
			var _room_alvo2 = rm_partida;
			scr_fade(_room_alvo2, 60, c_black);
		}
	break;
}