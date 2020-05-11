/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
// super def
if (room == play_room){
	attackPhrase = "Special Attack: Meticioulous Planning \n A good scammer comes prepared. \n Bonus 5 defense.";
	obj_computer.defense += 5;
} else if (room == play_room_minion){
	attackPhrase = "Special Attack: Frenzy \n IT'S A SWARM OF BOTS \n Dealing +2 damage.";
	obj_computer.attackDamage += 2;
} else if (room == play_room_sister){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
} else if (room == play_room_final){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
}