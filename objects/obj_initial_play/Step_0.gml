/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.giftcardActive == false){
	global.giftcardActive = true;
	obj_giftcard.visible = true;
	if (!audio_is_playing(snd_intro)){
		audio_play_sound(snd_intro,2,true);
	}
}
