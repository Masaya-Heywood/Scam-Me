/// @description Insert description here
// You can write your code in this editor
global.selectedCard = obj_dummy_card;
global.usbCount += 2;

if (healthRestore == true){
	health = health + floor(random_range(0,5));
}

if (sacrifice == true){
	health = health - 7;
}

if (endRound == true){
	if (position_meeting(mouse_x,mouse_y,self) && global.currentState = global.playerPlayState){
		calculatedAttack = obj_attack_add.playerAttack - obj_computer.defense;
		calculatedDefense = obj_computer.attackDamage - obj_defense_add.playerDefense
	
		if (calculatedAttack <= 0){
		// do nothing	
		} else if (calculatedAttack > 0){
			obj_computer.computerHealth = obj_computer.computerHealth - calculatedAttack; 
		}
	
		if (calculatedDefense <= 0){
		// do nothing	
		} else if (calculatedDefense > 0){
			health = health - calculatedDefense; 
	
		}
	
		//if (obj_reader_3.healthRestore == true){
		//	health = health + 100;
		//}
	
		randomNum = floor(random_range(0,7));
	
		if (randomNum == 0){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_give_up ,1, false);
		} else if (randomNum == 1){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_control ,1, false);
		} else if (randomNum == 2){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_already ,1, false);
		} else if (randomNum == 3){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_finished ,1, false);
		} else if (randomNum == 4){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_no_stopping ,1, false);
		} else if (randomNum == 5){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_waste ,1, false);
		} else if (randomNum == 6){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_dollar,1, false);
		} else if (randomNum == 7){
			audio_group_stop_all(audioTalk);
			audio_play_sound(snd_esc,1, false);
		}


		 global.currentState = global.finishState
	}

	global.reset = false;
}

if (restore == true){
	health = health - 25;
	obj_computer.computerHealth += 10;
}
