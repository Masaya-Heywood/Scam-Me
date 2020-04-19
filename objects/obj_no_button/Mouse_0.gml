/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.giftcardActive == true){
	instance_destroy();
	audio_play_sound(snd_click,100,false);
}