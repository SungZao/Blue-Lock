if(global.transicao == 0){
		switch(camera){
			default:
				x = lerp(x,camera.x+xs,0.2);
				y = lerp(y,camera.y+ys,0.2);
			break;
			case obj_cursor:
				x = lerp(x,camera.x+xs,0.05);
				y = lerp(y,camera.y+ys,0.05);
			break;
		}
}


scr_zoom(cam,692,364,0.2);


if(shake){
	xs = lerp(xs,irandom_range(-50,50),0.5)
	ys = lerp(ys,irandom_range(-50,50),0.5)
}else{
	xs = 0;
	ys = 0;
}
