/// @description Insert description here
// You can write your code in this editor
if (global.currentState == global.playerPlayStateSetup || global.currentState == global.playerPlayState){
	obj_player_duel_slot.heldCard = self;
	movetoHand = false;
	speed = 0;
	inHand = true;
	x = obj_player_duel_slot.x
	y = obj_player_duel_slot.y
	interactSlots = false;
	ds_list_delete(global.playerDeck,self);
}
