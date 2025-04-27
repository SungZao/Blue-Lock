acionado = false;
switch(hab){
	case "Passe Perfeito":
		global.tempo = 0;
		obj_camera.camera = obj_cursor;
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_cursor);
		layer_create(0,"Efeitos");
		var _fx_tint = fx_create("_filter_tintfilter");
		fx_set_parameter(_fx_tint, "g_TintCol", [0, 1, 0.8, 1]);
		layer_set_fx("Efeitos", _fx_tint);
	break;
}