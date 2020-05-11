/// @description Insert description here
// You can write your code in this editor
switch(global.currentState){
	case global.initialState:
	//nothing
	break;
	case global.computerPlayState:
	randomNum = floor(random_range(0,4));	
	
	
	if (randomNum == modeAggresive){
		if (bossRoom == play_room  ||  play_room_final){
			sprite_index = spr_virus_normal
			} else if (bossRoom == play_room_minion){
			sprite_index = spr_minion_aggro
			} else if (bossRoom == play_room_sister){
			sprite_index = spr_minion	
			} else if (bossRoom == play_room_final){
			sprite_index = spr_minion	
		}
		toolPhrase = "The scambot is angry! \n He's more likely to try to inflict damage \n than defend against it.";
		attackDamage = floor(random_range(10,20))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(5,10))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense+revealCap));
		modeReveal = "Aggresive";
	} else if (randomNum == modeDefensive){
		if (bossRoom == play_room  ||  play_room_final){
			sprite_index = spr_virus_defense
			} else if (bossRoom == play_room_minion){
			sprite_index = spr_minion
			} else if (bossRoom == play_room_sister){
			sprite_index = spr_minion	
			} else if (bossRoom == play_room_final){
			sprite_index = spr_minion	
		}
		toolPhrase = "The scambot is being cautious. \n He's trying to not take damage.";
		attackDamage = floor(random_range(5,10))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(10,20))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense + revealCap));
		modeReveal = "Defensive";
	} else if (randomNum == modeVeryAggresive){
		if (bossRoom == play_room ||  play_room_final){
			sprite_index = spr_virus_aggresive
			} else if (bossRoom == play_room_minion){
			sprite_index = spr_minion_very_aggro
			} else if (bossRoom == play_room_sister){
			sprite_index = spr_minion	
			} else if (bossRoom == play_room_final){
			sprite_index = spr_minion	
		}
		toolPhrase = "The scambot's throwing all caution to the wind! \n He's fixed on destroying you!";
		attackDamage = floor(random_range(20,45))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(0,7))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense + revealCap));
		modeReveal = "Very Aggresive";
	} else if (randomNum == modeVeryDefensive){
		toolPhrase = "The scambot is retreating. \n He's looking to survive this round intact.";
		if (bossRoom == play_room ||  play_room_final){
			sprite_index = spr_virus_sad
		} else if (bossRoom == play_room_minion){
			sprite_index = spr_minion_very_def
		} else if (bossRoom == play_room_sister){
			sprite_index = spr_minion	
		} else if (bossRoom == play_room_final){
			sprite_index = spr_minion	
		}
		attackDamage = floor(random_range(0,7))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(20,45))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense + revealCap));
		modeReveal = "Very Defensive";
	}
	
	global.currentState = global.playerPlayState;
	break;
	case global.playerPlayState:
	//do nothing
	break;
}

if (computerHealth <= 0){
	if (room == play_room_minion){
		room = win_room;
	} else {
	room = cinematic_room_minion;
	}
	instance_destroy();
} else if (health <= 0){
	instance_destroy();
}
