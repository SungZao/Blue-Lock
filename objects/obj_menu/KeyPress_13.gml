switch (room){
	case rm_menu:
		if (index == 1){
			game_end();
		}

		if (index == 0){
			room_goto(rm_tutorial);
		}
	break;
	
	case rm_sala:
		if (index == 0){
								
		}

		if (index == 1){
								
		}
							
		if (index == 2){
			draw_set_color(c_white);
			room_goto(rm_partida);
		}
	break;
}