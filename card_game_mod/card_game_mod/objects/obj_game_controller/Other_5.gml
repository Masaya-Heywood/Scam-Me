/// @description Insert description here
// You can write your code in this editor
global.selectedCard = obj_dummy_card;

if (room == cinematic_room_minion){
	instance_destroy();
	global.currentState = global.initialState;
}
