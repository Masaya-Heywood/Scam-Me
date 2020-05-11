/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// super aggro
if (room == play_room){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 3 health at start of round.";
	health -= 3;
} else if (room == play_room_minion){
	attackPhrase = "Special Attack: Frenzy \n TOO MANY BOTS \n Dealing +2 damage.";
	obj_computer.attackDamage += 2;
} else if (room == play_room_sister){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
} else if (room == play_room_final){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
}