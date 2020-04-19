/// @description Insert description here
// You can write your code in this editor

randomNum = random_range(1,6);

if (randomNum == 1){
	sprite_index = spr_front_rock;
} else if (randomNum == 2){
	sprite_index = spr_front_paper;
} else if (randomNum > 3){
	sprite_index = spr_front_scissors;
}