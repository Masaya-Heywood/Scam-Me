/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left){
	audio_play_sound(snd_click,100,false);
}

if (room = purchase_room){
	audio_stop_sound(snd_intro);	
}

if (global.downloadActive == true && !audio_is_playing(snd_download)){
	audio_play_sound(snd_download,2,false);
}

if(room = play_room){
	if !audio_is_playing(snd_boss){
		audio_play_sound(snd_boss,1,false)
	}
} else if (room = play_room_minion){
	if !audio_is_playing(snd_minion_music){
		audio_play_sound(snd_minion_music,1,false)
	}
} else if (room = play_room_sister){
	if !audio_is_playing(snd_sister_music){
		audio_play_sound(snd_sister_music,1,false)
	}
} else if (room = play_room_final){
	if !audio_is_playing(snd_sister_music){
		audio_play_sound(snd_sister_music,1,false)
	}
}