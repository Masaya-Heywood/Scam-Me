/// @description Insert description here
// You can write your code in this editor
if (inDecks == false){
	if (inHand == false && interactSlots == true){
		movetoHand = false;
		speed = 0;
		obj_controller.cardReady = true;
		inHand = true;
		x = hand.x
		y = hand.y
		ds_list_add(global.playerDeck,self);
	}
	inDecks = true;
	
}

if (global.currentState == global.playerPlayStateSetup || global.currentState == global.playerPlayState){
		face_up = true;
		playable = true;
}