/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//aggro
if (room == play_room){
	attackPhrase = "Special Attack: Backdoor Suprise \n Scambot doesn't care about your personal space. \n -1 to your Base Attack";
	obj_player_special.holdoverAttack -= 1;
} else if (room == play_room_minion){
	attackPhrase = "Special Attack: Frenzy \n SO MANY BOTS \n Dealing +1 damage.";
	obj_computer.attackDamage += 1;
} else if (room == play_room_sister){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
} else if (room == play_room_final){
	attackPhrase = "Special Attack: Lucky Break \n Evey scammer is waiting for the perfect moment. \n Lost 2 health at start of round.";
}