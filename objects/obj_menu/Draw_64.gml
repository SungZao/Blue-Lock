draw_set_font(m5x7);

var _dist = 100;
var _gui_larg = display_get_gui_width();
var _gui_alt = display_get_gui_height();
switch (room){
	case rm_menu:
	 _x1 = _gui_larg / 2;
	 _y1 = _gui_alt / 2;
	break;
	
	case rm_sala:
		switch(escolha){
			case "Menu":
				_x1 = 100;
				_y1 = 200;
				xspr = 900;
				spr = draw_sprite_ext(spr_andando_tras, image_index, xspr, 400, 18, 18, 0, c_white, 1)
			break;
			
			case "Habilidades":
				_y1 = 100;
				draw_text_transformed(20, 20,"Habilidades", 2, 2, 0);
				spr = draw_sprite_ext(spr_andando_tras, image_index, xspr, 400, 18, 18, 0, c_white, 1)
			break;
		}
	break
}


for (var i = 0; i < op_max; i++){
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	if (index = i){
		switch(escolha){
			case "Menu":
				draw_set_color(c_aqua);
			break;
			case "Habilidades":
				if(index != op_max)
					draw_set_color(c_aqua);
			break;
		}
		
	}else{
		draw_set_color(c_white);
	}
	
	draw_text_transformed(_x1, _y1 + (_dist * i), opcoes[i], 2, 2, 0);
}