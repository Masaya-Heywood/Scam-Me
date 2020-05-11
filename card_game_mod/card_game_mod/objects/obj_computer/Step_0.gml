/// @description Insert description here
// You can write your code in this editor
switch(global.currentState){
	case global.initialState:
	//nothing
	break;
	case global.computerPlayState:
	randomNum = floor(random_range(0,4));	
	
	
	if (randomNum == modeAggresive){
		sprite_index = spr_virus_normal;
		toolPhrase = "The scambot is angry! \n He's more likely to try to inflict damage \n than defend against it.";
		attackDamage = floor(random_range(10,20))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(5,10))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense+revealCap));
		modeReveal = "Aggresive";
	} else if (randomNum == modeDefensive){
		sprite_index = spr_virus_defense;
		toolPhrase = "The scambot is being cautious. \n He's trying to not take damage.";
		attackDamage = floor(random_range(5,10))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(10,20))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense + revealCap));
		modeReveal = "Defensive";
	} else if (randomNum == modeVeryAggresive){
		sprite_index = spr_virus_aggresive;
		toolPhrase = "The scambot's throwing all caution to the wind! \n He's fixed on destroying you!";
		attackDamage = floor(random_range(20,45))
		attackReveal = "~" + string(random_range(attackDamage - revealCap,attackDamage + revealCap));
		defense = floor(random_range(0,7))
		defenseReveal = "~" + string(random_range(defense - revealCap,defense + revealCap));
		modeReveal = "Very Aggresive";
	} else if (randomNum == modeVeryDefensive){
		toolPhrase = "The scambot is retreating. \n He's looking to survive this round intact.";
		sprite_index = spr_virus_sad
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
	room = win_room;
	instance_destroy();
} else if (health <= 0){
	instance_destroy();
}
