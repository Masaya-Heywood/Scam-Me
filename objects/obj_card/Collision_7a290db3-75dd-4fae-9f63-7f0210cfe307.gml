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
		ds_list_add(global.computerDeck,self);
	}
	inDecks = true;
}