acionado = false;
global.tempo = 1;
obj_camera.camera = obj_player;
layer_destroy(layer_get_id("Efeitos"));
instance_destroy(obj_cursor);
instance_destroy();