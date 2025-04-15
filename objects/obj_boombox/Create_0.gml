switch(room){
	case rm_menu:
		audio_stop_all()
		audio_play_sound(snd_bedroom,1,true)
	break;
	case rm_sala:
		audio_stop_all()
		audio_play_sound(snd_bedroom,1,true)
	break;
	case rm_partida:
		audio_stop_all()
		audio_play_sound(snd_battle,1,true)
	break;
}
