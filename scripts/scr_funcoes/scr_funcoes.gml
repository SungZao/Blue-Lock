// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_funcoes(_1,_2,_3){
	
	switch(estado){
	case "parado":
		if(estamina < max_estamina)
			estamina += 0.2
		switch(dir){
			default:
	
				image_xscale = 1;
				sprite_index = _1;
			break;
			case 1:
				sprite_index = _1;
				image_xscale = -1;
			break;
	
			case 2:
				sprite_index = _1;
				image_xscale = 1;
			break;
		}
	break;
	case "andando":
		veloc = 1;	
		image_speed = 0.7;
		if(estamina < max_estamina)
			estamina += 0.2
		switch(dir){
			default:
	
				image_xscale = 1;
				sprite_index = _2;
			break;
			case 1:
				sprite_index = _2;
				image_xscale = -1;
			break;
	
			case 2:
				sprite_index = _2;
				image_xscale = 1;
			break;
		}
	break;
	case "chutando":
		switch(dir){
			default:
	
				image_xscale = 1;
				sprite_index = _3;
			break;
			case 1:
				sprite_index = _3;
				image_xscale = -1;
			break;
	
			case 2:
				sprite_index = _3;
				image_xscale = 1;
			break;

		}
	break;
	
	case "correndo":
		veloc = 3;	
		image_speed = 1;
		if(estamina <= 0)
			estado = "andando";
		estamina -= 0.2
		switch(dir){
			default:
	
				image_xscale = 1;
				sprite_index = _2;
			break;
			case 1:
				sprite_index = _2;
				image_xscale = -1;
			break;
	
			case 2:
				sprite_index = _2;
				image_xscale = 1;
			break;

		}
	break;
	case "dashing":
		dash_dir = point_direction(x,y,mouse_x,mouse_y);
	
		hveloc = lengthdir_x(veloc*3,dash_dir);
		vveloc = lengthdir_y(veloc*2,dash_dir);
		x += hveloc;
		y += vveloc;
		var _inst = instance_create_layer(x,y,"Instances",obj_dash);
		_inst.sprite_index = sprite_index;
	break;
}
}
function scr_bola(){
	switch(global.posse){
		case 1:
			with(obj_player){
				switch(dir){
					default:
	
						obj_bola.x = x+16
						obj_bola.y = y+10
					break;
					case 1:
						obj_bola.x = x-16
						obj_bola.y = y+10
					break;
	
					case 2:
						obj_bola.x = x+16
						obj_bola.y = y+10
					break;
				}
			}
		break;
		case 2:
			with(obj_enemy){
				switch(dir){
					default:
	
						obj_bola.x = x+10
						obj_bola.y = y
					break;
					case 1:
						obj_bola.x = x-5
						obj_bola.y = y-20
					break;
	
					case 2:
						obj_bola.x = x-20
						obj_bola.y = y
					break;
				}
			}
		break;
		
		
	}
}

function scr_chute(_forca){
	if(global.posse == 1){
		audio_play_sound(snd_chute,1,false);
		estado = "chutando"
		alarm[3] = 20;
		podepegar = false
		alarm[0] = 120
		scr_funcoes(spr_parado,spr_correndo,spr_chutando);
		obj_bola.direction = point_direction(x,y,mouse_x,mouse_y);
		obj_bola.image_angle = obj_bola.direction;
		obj_bola.speed = _forca;
		global.posse = 0;
		
	}
}

