/// @description Insert description here
// You can write your code in this editor
if (audio_is_playing(snd_winning)){
	sprite_index = spr_virus_talk;
	image_speed = .5;
} else if (!audio_is_playing(snd_winning) && endTimes = false){
	sprite_index = spr_virus_sad;
} else if (endTimes = true){
	sprite_index = spr_virus_no;
	image_angle += .18;
	image_xscale -= .015;
	image_yscale -= .015;
	if (floor(image_angle) == 38){
		game_restart();
	}
}

