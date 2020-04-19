/// @description Insert description here
// You can write your code in this editor
persistent = true;

randomize();
//deck creation
global.deck = ds_list_create();
global.computerDeckLocation =  ds_list_create();
global.playerDeckLocation =  ds_list_create();
global.computerDeck =  ds_list_create();
global.playerDeck =  ds_list_create();
global.discardDeck =  ds_list_create();


//hands & cards variables
global.numCards = 24;
cardY = y;
global.handSize = 3;
cardNumber = global.numCards;
slotNumber = 3;
cardCounter = 0;
endCounter = global.numCards;
discardNumber = global.numCards;
discardCounter = 0;
cardReady = true;
tallyPlayer = false;
tallyComputer = false;
revealWait = 100;
cardNumberSecondary = 0;
comparing = false;
global.discardStagger = 0;
global.deckStagger = 0;

//states
global.startState = 0;
global.dealComputerState = 1;
global.dealPlayerState = 2;
global.computerPlayState = 3;
global.playerPlayStateSetup = 4;
global.playerPlayState = 5;
global.discardState = 6;
global.endState = 7;
global.currentState = 0;
global.cardReady = false;
global.discardOrder = 0;

//global.testCount = 0;

//create cards
for (i=0; i<global.numCards; i++) {
   var newcard = instance_create_layer(x,y,"Instances",obj_card); //make a card
   newcard.face = i; //set the card's face
   newcard.depth = (100 - global.numCards) + cardY;
   newcard.x = x; //set its position
   newcard.y = cardY;
   cardY += 1;
   newcard.face_up = false;
   //newcard.in_hand = false; //tell the card it is not in the hand
   //newcard.targetdepth = -(global.numcards-i); //ADDED this also creates the effect of the staggered cards
   ds_list_add(global.deck,newcard); //add the card to the deck list
   if (i = global.numCards){
	global.currentState = 1;
   }
}
//create decks
previousCompDeckX = obj_computer_deck_location.x;
previousCompDeckY = obj_computer_deck_location.y;

for (i=0; i<global.handSize; i++) {
	var deckHand = instance_create_layer(x,y,"Instances",obj_computer_hand_slot);
	deckHand.x = previousCompDeckX;
	deckHand.y = previousCompDeckY;
	previousCompDeckX += 150;
	ds_list_add(global.computerDeckLocation, deckHand);
}

previousPlayDeckX = obj_player_deck_location.x;
previousPlayDeckY = obj_player_deck_location.y;

for (i=0; i<global.handSize; i++) {
	var deckHand = instance_create_layer(x,y,"Instances",obj_player_hand_slot);
	deckHand.x = previousPlayDeckX;
	deckHand.y = previousPlayDeckY;
	previousPlayDeckX += 150;
	ds_list_add(global.playerDeckLocation, deckHand);
}
