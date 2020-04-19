/// @description Insert description here
// You can write your code in this editor
switch(global.currentState){
	case global.startState:
		global.currentState = global.dealComputerState;
		ds_list_shuffle(global.deck);
		break;
	case global.dealComputerState:
	//deals cards from the deck
	if (ds_list_size(global.deck) != 0){
		if (cardCounter < 3 && cardReady == true){
			cardReady = false;
			var dealt_card = global.deck[| ds_list_size(global.deck)-cardNumber];
			var card_location = global.computerDeckLocation[| ds_list_size(global.computerDeckLocation)-slotNumber];
			ds_list_delete(global.deck, ds_list_size(global.deck)-cardNumber);
			dealt_card.hand = card_location;
			dealt_card.movetoHand = true;
			cardNumber--;
			cardCounter++;
			slotNumber--;
			audio_play_sound(snd_interact,1,false);
			//obj_test.visible = true;
		} else if (cardCounter == 3 && cardReady == true){
			global.currentState = global.dealPlayerState;
			cardCounter = 0;
			cardReady = true;
			slotNumber = 3;
			//obj_test.visible = false;
		}
	} else if (ds_list_size(global.deck) == 0){
		global.currentState = global.endState;
	}
		break;
	case global.dealPlayerState:
	//deals cards for the player
		if (cardCounter < 3 && cardReady == true){
			cardReady = false;
			var dealt_card = global.deck[| ds_list_size(global.deck)-cardNumber];
			var card_location = global.playerDeckLocation[| ds_list_size(global.playerDeckLocation)-slotNumber];
			ds_list_delete(global.deck, ds_list_size(global.deck)-cardNumber);
			dealt_card.hand = card_location;
			dealt_card.movetoHand = true;
			cardNumber--;
			cardCounter++;
			slotNumber--;
			audio_play_sound(snd_interact,1,false);
			//obj_test.visible = true;
		} else if (cardCounter = 3  && cardReady == true){
			global.currentState = global.computerPlayState;
			cardCounter = 0;
			cardReady = true;
			slotNumber = 3;
			//obj_test.visible = false;
		}
		break;
	case global.computerPlayState:
	//computer plays
	var computersChoice = random_range(0,3);
	var computersCard = global.computerDeck[| computersChoice];
	computersCard.hand  = obj_computer_duel_slot;
	computersCard.inHand = false;
	computersCard.movetoHand = true;
	computersCard.inDecks = true;
	audio_play_sound(snd_interact,1,false);
	global.currentState = global.playerPlayStateSetup;
		break;
	case global.playerPlayStateSetup:
	//player plays
	for (i = 2; i > 0; i--){
		var playerCard = global.playerDeck[| ds_list_size(global.playerDeck)-i];
		playerCard.playable = true;
		playerCard.face_up = true;
		playerCard.inHand = false;
		audio_play_sound(snd_interact,1,false);
	}
	global.currentState = global.playerPlayState;
		break;
	case global.playerPlayState:
	//checks the match
	if (global.cardReady == true){
	alarm[0] = revealWait;
	global.cardReady = false;
	}
	
	//if (global.cardReady == true && comparing = false){
	//	if (obj_player_duel_slot.heldCard.sprite_index == spr_front_rock && obj_computer_duel_slot.heldCard.sprite_index == spr_front_scissors){
	//		tallyPlayer = true;
	//		comparing = true;
	//		alarm[0] = revealWait;
	//	} else if (obj_player_duel_slot.heldCard.sprite_index == spr_front_paper && obj_computer_duel_slot.heldCard.sprite_index == spr_front_rock){
	//		tallyPlayer = true;
	//		comparing = true;
	//		alarm[0] = revealWait;
	//	} else if (obj_player_duel_slot.heldCard.sprite_index == spr_front_scissors && obj_computer_duel_slot.heldCard.sprite_index == spr_front_paper){
	//		tallyPlayer = true;
	//		comparing = true;
	//		alarm[0] = revealWait;
	//	}
	//}
		break;
	case global.discardState:
	//place cards in hand in discard pile
	if (global.discardOrder = 0){
		obj_computer_duel_slot.heldCard.hand = obj_discard_slot;
		obj_computer_duel_slot.heldCard.movetoHand = true;
		obj_computer_duel_slot.heldCard = 0;
		obj_computer_duel_slot.heldCard.inDecks = false;
		audio_play_sound(snd_interact,1,false);
		ds_list_add(global.discardDeck,obj_computer_duel_slot.heldCard);
		global.discardOrder = 1;
	}
	
	if (global.discardOrder = 1 && cardReady == true){
		cardReady = false;
		obj_player_duel_slot.heldCard.hand = obj_discard_slot;
		obj_player_duel_slot.heldCard.movetoHand = true;
		audio_play_sound(snd_interact,1,false);
		if (obj_player_duel_slot.heldCard.activeDiscard == true){
			global.discardOrder = 2;	
			cardReady = true;
			obj_player_duel_slot.heldCard = 0;
			ds_list_add(global.discardDeck,obj_player_duel_slot.heldCard);
		}
	}
	
	if (global.discardOrder = 2){
		cardCounter = 0;
		 cardNumberSecondary = ds_list_size(global.computerDeck);
		if (cardCounter < ds_list_size(global.computerDeck) && cardReady == true){
			cardReady = false;
			var current_card = global.computerDeck[| ds_list_size(global.computerDeck)-cardNumberSecondary];
			ds_list_delete(global.computerDeck, ds_list_size(global.computerDeck)-cardNumberSecondary);
			ds_list_add(global.discardDeck,current_card);
			current_card.hand = obj_discard_slot;
			current_card.movetoHand = true;
			current_card.face_up = true;
			current_card.inDecks = false;
			cardNumberSecondary--;
			cardCounter++;
			audio_play_sound(snd_interact,1,false);
		} else if (cardCounter == ds_list_size(global.computerDeck) && cardReady == true){
			global.discardOrder = 3;
		}
	}
	
	if (global.discardOrder = 3){
		cardCounter = 0;
		cardNumberSecondary = ds_list_size(global.playerDeck);
		if (cardCounter < ds_list_size(global.playerDeck) && cardReady == true){
			cardReady = false;
			var current_card = global.playerDeck[| ds_list_size(global.playerDeck)-cardNumberSecondary];
			ds_list_add(global.discardDeck,current_card);
			current_card.hand = obj_discard_slot;
			current_card.movetoHand = true;
			ds_list_delete(global.playerDeck, ds_list_size(global.playerDeck)-cardNumberSecondary);
			cardNumberSecondary--;
			cardCounter++;
			audio_play_sound(snd_interact,1,false);
		} else if (cardCounter == ds_list_size(global.playerDeck) && cardReady == true){
			cardCounter = 0;
			slotNumber = 3;
			global.currentState = global.dealComputerState;
		}
		
		if (ds_list_size(global.deck) = 0){
			global.currentState = global.endState;
		}
	}
	
		break;
	case global.endState:
	//reset the game
	
	//attempt at making cards reshuffle
	//var dealt_card = global.discardDeck[| ds_list_size(global.discardDeck)-endCounter];
	//	if (cardReady == true){
	//		cardReady = false;
	//		var card_location = obj_controller;
	//		dealt_card.hand = card_location;
	//		dealt_card.movetoHand = true;
	//		dealt_card.inHand = false
	//		dealt_card.inDeck = false;
	//		endCounter--;
	//		audio_play_sound(snd_interact,1,false);
	//		//obj_test.visible = true;
	//	}
		game_restart();
		break;
}