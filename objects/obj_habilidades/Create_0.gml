acionado = false;
switch(hab){
	case "Passe Perfeito":
		global.tempo = 0;
		obj_camera.camera = obj_cursor;
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_cursor);
	break;
}