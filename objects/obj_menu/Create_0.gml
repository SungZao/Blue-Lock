switch(room){
	case rm_menu:
		opcoes = ["Play", "Sair"]
		escolha = "Menu";
	break;
	
	case rm_sala:
			opcoes = ["Habilidades", "Inventario", "Play"]
			escolha = "Sala";
	break;
}

index = 0;
op_max = array_length(opcoes);

_x1 = 0;
_y1 = 0;
xspr = 0;

spr = 0;
global.habilidades = "Passe Perfeito";


font_enable_effects(m5x7, true, {
    outlineEnable: true,
    outlineDistance: 1,
    outlineColor: c_black,
});


