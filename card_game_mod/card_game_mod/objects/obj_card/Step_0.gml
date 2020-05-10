 /// @description Insert description here
// You can write your code in this editor


if (movetoHand == true){
	move_towards_point(hand.x, hand.y, 15);
}

if (playable == true){
	interactSlots = true;
		
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, self)){
		move_towards_point(obj_player_duel_slot.x, obj_player_duel_slot.x, 8);
		global.cardReady = true;
		audio_play_sound(snd_interact,1,false);
		for (i = 3; i > 0; i--){
			var playerCard = global.playerDeck[| ds_list_size(global.playerDeck)-i];
			playerCard.playable = false;
		}
	}
}

switch(currentState){
	case startState:
	//nothing
	case dealState:
	//deals cards to computer then player
	case playState:
	//allows the player to play
	case discardState:
	//place cards in hand in discard pile
	case endState:
	//reset the game
	break;
}

if (face >= 0 && face < 8 && face_up == true){ 
	sprite_index = spr_front_rock;
	face_value = 1;
} else if (face >= 8 && face < 16 && face_up == true){
	sprite_index = spr_front_paper;
	face_value = 2;
} else if (face >= 16 && face_up == true){
	sprite_index = spr_front_scissors;
	face_value = 3;
} else if (face_up == false){ 
	sprite_index = spr_back
}



