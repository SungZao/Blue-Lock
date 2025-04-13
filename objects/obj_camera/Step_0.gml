if(global.transicao == 0){
	if(camera == 1){
		x = lerp(x,obj_player.x,0.2);
		y = lerp(y,obj_player.y,0.2);
	}
	switch(global.posse){
		case 0:
			scr_zoom(cam,1366,728,0.2);
		break;
	
		case 1:
			scr_zoom(cam,1092,582,0.2);
		break;
	}
}