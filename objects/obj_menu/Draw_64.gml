draw_set_font(m5x7);
draw_set_color(c_white);

var _dist = 60;
var _gui_larg = display_get_gui_width();
var _gui_alt = display_get_gui_height();
var _x1 = _gui_larg / 2;
var _y1 = _gui_alt / 2;

for (var i = 0; i < op_max; i++){
	draw_text(_x1, _y1 + (_dist * i), opcoes[i]);
}