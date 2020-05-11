/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (room == play_room){
	sprite_index = spr_player_boost_1;
	warmingUp = true;
	toolPhrase = "Special Ability: Warming Up \n Place a card here to gain .2 Base attack and defense. \n Useable once per round. "
} else if (room == play_room_minion){
	sprite_index = spr_player_boost_1;
	warmingUpMinion = true;
	toolPhrase = "Special Ability: Warming Up \n Place a card here to gain .2 Base attack and defense. \n Useable once per round. "
}  else if (room == play_room_sister){
	sprite_index = spr_player_boost_1;
	warmingUpSister = true;
	toolPhrase = "Special Ability: Warming Up \n Place a card here to gain .2 Base attack and defense. \n Useable once per round. "
} else if (room == play_room_final){
	sprite_index = spr_player_boost_1;
	warmingUpFinal = true;
	toolPhrase = "Special Ability: Warming Up \n Place a card here to gain .2 Base attack and defense. \n Useable once per round. "
} else if (room == win_room || lose_room){
	instance_destroy();
}

if (room == cinematic_room_minion){
	instance_destroy();
}