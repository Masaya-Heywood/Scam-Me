/// @description Insert description here
// You can write your code in this editor
randomize();

persistent = true;

//globals
global.playerDeckLocation = ds_list_create();
global.handSize = 6
global.cardCounter = 0;

//
global.cardReady = false;
slotNumber = global.handSize;

//creates deck cards locations
previousCompDeckX = obj_player_slot.x;
previousCompDeckY = obj_player_slot.y;


for (i=0; i<global.handSize; i++) {
	var deckHand = instance_create_layer(x,y,"Instances",obj_player_slot);
	deckHand.x = previousCompDeckX;
	deckHand.y = previousCompDeckY;
	instance_create_layer(deckHand.x,deckHand.y+10,"Instances",obj_player_card)
	previousCompDeckX += 150;
	ds_list_add(global.playerDeckLocation, deckHand);
}

