/// @description Insert description here
// You can write your code in this editor
sprite_index = spr_slots_filled;
if (warmingUp == true){
	obj_player_special.holdoverDefense += 0.2;
	obj_player_special.holdoverAttack += 0.2;
} else if (warmingUpMinion == true){
	obj_player_special.holdoverDefense += 0.4;
	obj_player_special.holdoverAttack += 0.4;
}  else if (warmingUpSister == true){
	obj_player_special.holdoverDefense += 0.6;
	obj_player_special.holdoverAttack += 0.6;
}  else if (warmingUpFinal == true){
	obj_player_special.holdoverDefense += 0.8;
	obj_player_special.holdoverAttack += 0.8;
}