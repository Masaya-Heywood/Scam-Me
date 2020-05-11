/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//aggro
if (room == play_room){
	attackPhrase = "Special Attack: Backdoor Suprise \n Scambot doesn't care about your personal space. \n -1 to your Base Attack";
	obj_player_special.holdoverAttack -= 1;
} else if (0 != 0){
	attackPhrase = "Special Attack: Web of Lies \n Keeping you confused with nonsensical scams. \n -1 to your Base Defense";
} else if (0 != 0){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
} else if (0 != 0){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
}