/// @description Insert description here
// You can write your code in this editor

randomNum = floor(random_range(0,7));

if (randomNum == 1  || randomNum == 4){
	sprite_index = spr_front_rock;
	toolPhrase = "A. \n Damage.";
	attackValue = 5;
} else if (randomNum == 2  || randomNum == 5){
	sprite_index = spr_front_paper;
	toolPhrase = "A. \n Defense.";
	defenseValue = 5;
} else if (randomNum == 3  || randomNum == 6){
	sprite_index = spr_front_scissors;
	toolPhrase = "A. \n Damage 2.";
	attackValue = floor(random_range(3,8));
}