/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x, mouse_y, self)) {
	obj_end_cinematic.endTimes = true;
	audio_stop_all();
	audio_play_sound(snd_win,1,false);
	instance_destroy();
}