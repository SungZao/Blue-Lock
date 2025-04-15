if(speed > 0)
	speed -= 0.02
if(speed < 5)
	sprite_index = spr_bola;

if(speed > 5){
	var _inst = instance_create_layer(x,y,"Instances",obj_dash);
	_inst.sprite_index = sprite_index;
}
	

scr_bola();
