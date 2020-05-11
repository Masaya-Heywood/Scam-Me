/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//defensive
if (room == play_room){
	attackPhrase = "Special Attack: Web of Lies \n Keeping you confused with nonsensical scams. \n -1 to your Base Defense";
	obj_player_special.holdoverDefense -= 1;
} else if (room == play_room_minion){
		attackPhrase = "Special Attack: Frenzy \n LOOK AT THOSE BOTS BOTS \n Dealing +1 damage.";
	obj_computer.attackDamage += 1;
} else if (room == play_room_sister){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
} else if (room == play_room_final){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
}