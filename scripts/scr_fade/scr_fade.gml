function scr_fade(){
var _room_alvo = argument0;
var _duration = argument1;
var _color = argument2;

var _instace = instance_create_depth(0, 0, 0, obj_fade);
with (_instace){
	room_alvo = _room_alvo;
	duration = _duration;
	color = _color;
	}
}