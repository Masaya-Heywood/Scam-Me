/// @description Insert description here
// You can write your code in this editor
randomize();

persistent = true;

//globals
global.playerDeckLocation = ds_list_create();
global.handSize = 6
global.cardCounter = 0;
global.canSelect = false;
global.selectedCard = obj_dummy_card;


//states
global.initialState = 1;
global.setupState = 2;
global.computerPlayState = 3;
global.playerPlayState = 4;
global.finishState = 5;
global.currentState = global.initialState;

//
global.cardReady = false;
slotNumber = global.handSize;

//creates deck cards locations
previousCompDeckX = obj_player_slot.x;
previousCompDeckY = obj_player_slot.y;



