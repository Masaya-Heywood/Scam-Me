/// @description Insert description here
// You can write your code in this editor
switch(global.currentState){
	case global.initialState:
		for (i=0; i<global.handSize; i++) {
			var deckHand = instance_create_layer(x,y,"Instances",obj_player_slot);
			deckHand.x = previousCompDeckX;
			deckHand.y = previousCompDeckY;
			previousCompDeckX += 150;
			ds_list_add(global.playerDeckLocation, deckHand);
		}
		
		previousCompDeckX = obj_player_slot.x;
		previousCompDeckY = obj_player_slot.y;
		for (i=0; i<global.handSize; i++) {
			var deckHand = instance_create_layer(x,y,"Instances",obj_hand_bin);
			var playerCard = instance_create_layer(x,y,"Instances",obj_player_card);
			deckHand.x = previousCompDeckX;
			deckHand.y = previousCompDeckY;
			
			playerCard.x = previousCompDeckX;
			playerCard.y = previousCompDeckY;
			
			deckHand.heldCard = playerCard;
			deckHand.empty = false;
			
			previousCompDeckX += 150;
			ds_list_add(global.playerDeckLocation, deckHand);
		}
		
		global.currentState = global.computerPlayState;
	break;
	case global.computerPlayState:
	global.selectedCard = obj_dummy_card;
	break;
	case global.playerPlayState:
	global.canSelect = true;
	break;
	case global.finishState:
	room_restart();
	//global.reset = false;
	
	//	previousCompDeckX = obj_player_slot.x;
	//	previousCompDeckY = obj_player_slot.y;
	//for (i=0; i<global.handSize; i++) {
	//		var playerCard = instance_create_layer(x,y,"Instances",obj_player_card);
			
	//		playerCard.x = previousCompDeckX;
	//		playerCard.y = previousCompDeckY;


	//		previousCompDeckX += 150;
	//	}
		
		//obj_battlefield_bin_1.sprite_index = spr_slots;
		//obj_battlefield_bin_2.sprite_index = spr_slots;
		//obj_battlefield_bin_3.sprite_index = spr_slots;
		
		//obj_attack_add.playerAttack = 0;
		//obj_defense_add.playerDefense = 0;
		
		//obj_reader_1.slotAttackValue = 0;
		//obj_reader_1.slotDefenseValue = 0;
		//obj_reader_2.slotAttackValue = 0;
		//obj_reader_2.slotDefenseValue = 0;
		//obj_reader_3.slotAttackValue = 0;
		//obj_reader_3.slotDefenseValue = 0;
	global.currentState = global.computerPlayState;
	break;
}