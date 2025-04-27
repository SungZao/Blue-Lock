if(obj_player.gols = 0)
{
	instance_create_layer(x,y,"Dialogo",obj_dialogo)
	obj_dialogo.nome = "segundo texto";
	obj_player.gols = 1;	
}