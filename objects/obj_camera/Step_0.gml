if(global.transicao == 0){
	if(camera == 1){
		x = lerp(x,obj_player.x+xs,0.2);
		y = lerp(y,obj_player.y+ys,0.2);
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
