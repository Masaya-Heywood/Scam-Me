/// @description Insert description here
// You can write your code in this editor
if (!audio_is_playing(snd_trap) && global.runningGame = false){
	global.runningGame = true;
	instance_create_depth(x,y,1,obj_game_controller);
	instance_create_depth(x,y,1,obj_computer);
	instance_create_depth(obj_battlefield_bin_1.x, obj_battlefield_bin_1.y + 40,1, obj_commit);
} else if (global.runningGame = true){
	
	instance_create_depth(x,y,1,obj_game_controller);
	instance_create_depth(obj_battlefield_bin_1.x, obj_battlefield_bin_1.y + 40,1, obj_commit);
	instance_destroy();
}

