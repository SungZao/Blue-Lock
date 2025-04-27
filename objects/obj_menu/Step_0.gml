if(keyboard_check_pressed(ord("W")) or keyboard_check_pressed(vk_up)){
	index--;
	if (index < 0){
		index = op_max - 1;
	}
}
if(keyboard_check_pressed(ord("S")) or keyboard_check_pressed(vk_down)){
	index++;
	if (index > op_max - 1){
		index = 0;
	}
}

switch(escolha){
	case "Habilidades":
		xspr = lerp(xspr,700,0.1);
		opcoes = ["Chute Poderoso","Gozadao","Troca-Troca","Bosta Preta", "Bosta Branca", "Puxa Penas"];
		op_max = array_length(opcoes);
	break;
	case "Sala":
		xspr = lerp(xspr,900,0.1);
		opcoes = ["Habilidades", "Inventario", "Play"];
		op_max = array_length(opcoes);
	break;
}