/// @description Insert description here
// You can write your code in this editor
if (movetoHand == true && global.currentState == global.endState){
	obj_controller.cardReady = true;
	global.deckStagger--;
	x = obj_controller.x;
	y = obj_controller.y + global.deckStagger;
	speed = 0;
	movetoHand = false;
}
