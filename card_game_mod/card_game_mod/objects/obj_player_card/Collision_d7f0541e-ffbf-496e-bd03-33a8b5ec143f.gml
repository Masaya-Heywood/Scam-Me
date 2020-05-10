/// @description Insert description here
// You can write your code in this editor
instance_destroy();

if (healthUse == true){
	health = health + healthBonus;	
}

if (healthRestore == true){
	health = health + floor(random_range(0,2));
	obj_player_special.holdoverDefense += 1;
}

if (sacrifice == true){
	health = health - 7;
}

if (restore == true){
	health = health + 25;
	obj_computer.computerHealth += 8;
}

if (reformat == true){
	health -= 3;
	obj_computer.computerHealth -= 8;
}

if (VPN == true){
	obj_player_special.holdoverDefense += 1;
}

if (trojan == true){
	obj_player_special.holdoverAttack += 1;
}

if (ddos == true){
	obj_player_special.holdoverAttack -= 3;
}

if (wipe == true){
	obj_player_special.holdoverDefense -= 3;
}

if (manual == true){
	obj_player_special.holdoverAttack += floor(random_range(1,2));
	obj_player_special.holdoverDefense += floor(random_range(1,2));
}


if (undo == true){
	obj_player_special.holdoverAttack -= 3;
	obj_battlefield_bin_1.slotAttackValue = 0;
	obj_battlefield_bin_1.slotDefenseValue = 0;
	obj_battlefield_bin_1.empty = true;
	obj_battlefield_bin_1.sprite_index = spr_slots;
	
	obj_battlefield_bin_2.slotAttackValue = 0;
	obj_battlefield_bin_2.slotDefenseValue = 0;
	obj_battlefield_bin_2.empty = true;
	obj_battlefield_bin_2.sprite_index = spr_slots;
	
	obj_battlefield_bin_3.slotAttackValue = 0;
	obj_battlefield_bin_3.slotDefenseValue = 0;
	obj_battlefield_bin_3.empty = true;
	obj_battlefield_bin_3.sprite_index = spr_slots;

}