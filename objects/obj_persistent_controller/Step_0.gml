/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left){
	audio_play_sound(snd_click,1,false);
}

if (global.giftcardActive == true && !audio_is_playing(snd_intro)){
	audio_play_sound(snd_intro,2,true);
} else if (global.giftcardActive == true && audio_is_playing(snd_intro)){
	audio_stop_sound(snd_intro);
}

if (global.downloadActive == true && !audio_is_playing(snd_download)){
	audio_play_sound(snd_download,2,false);
}