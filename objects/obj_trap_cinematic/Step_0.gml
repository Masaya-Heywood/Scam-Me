/// @description Insert description here
// You can write your code in this editor
if !audio_is_playing(snd_trap){
	instance_create_depth(x,y,1,obj_game_controller);
	instance_create_depth(x,y,1,obj_computer);
	instance_destroy();
}

