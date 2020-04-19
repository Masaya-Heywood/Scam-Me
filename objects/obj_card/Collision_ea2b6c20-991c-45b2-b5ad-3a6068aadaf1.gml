/// @description Insert description here
// You can write your code in this editor

if (movetoHand == true){
	obj_controller.cardReady = true;
	global.discardStagger--
	x = obj_discard_slot.x
	y = obj_discard_slot.y + global.discardStagger;
	speed = 0;
}

movetoHand = false;
speed = 0;

if (activeDiscard == false){
	movetoHand = false;
	activeDiscard = true;
	speed = 0;
	obj_controller.cardReady = true;
	inHand = true;
}