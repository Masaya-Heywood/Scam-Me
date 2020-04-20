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
	global.selectedCard = 0;
	break;
	case global.playerPlayState:
	global.canSelect = true;
	break;
}