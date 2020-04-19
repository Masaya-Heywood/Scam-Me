/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.downloadActive == true){
	global.giftcardActive = false;
	global.downloadActive = false;
	obj_download_box.visible = false;
	obj_download_run.visible = false;
	room_goto(2);
	audio_play_sound(snd_click,100,false);
}