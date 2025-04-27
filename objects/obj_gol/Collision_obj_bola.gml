obj_player.gols ++;
instance_create_layer(672,416,"Instances",obj_bola);
instance_destroy(instance_nearest(x,y,obj_bola));
instance_create_layer(x,y,layer,obj_org);


