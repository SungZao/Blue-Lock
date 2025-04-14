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
	_x1 = 100;
	_y1 = 200;
	spr = draw_sprite_ext(spr_andando_tras, image_index, 900, 400, 18, 18, 0, c_white, 1)

	break
}


instance_create_layer(x,y,layer,obj_animacoes,{alpha: 1})
for (var i = 0; i < op_max; i++){
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	
	if (index = i){
		draw_set_color(c_aqua);
	}else{
		draw_set_color(c_white);
	}
	
	draw_text_transformed(_x1, _y1 + (_dist * i), opcoes[i], 2, 2, 0);
}