global.transicao = 1;
alarm[0] = 60;
counter = 1;
with obj_player{
obj_bola.x = x;
obj_bola.y = y - 200;
estado = "andando";
estamina = max_estamina;



scr_zoom(view_get_camera(0),1366,728,0.2);
obj_camera.x = x;
obj_camera.y = y
}

