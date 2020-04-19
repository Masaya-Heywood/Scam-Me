/// @description Insert description here
// You can write your code in this editor

if (inDecks = true){
	obj_computer_duel_slot.heldCard = self;
	movetoHand = false;
	speed = 0;
	inHand = true;
	x = obj_computer_duel_slot.x;
	y = obj_computer_duel_slot.y;
	interactSlots = false;
}
	
if (global.currentState == global.computerPlayState){
	ds_list_delete(global.playerDeck,self);
}