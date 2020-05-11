/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (position_meeting(mouse_x,mouse_y,self) && global.canSelect = true && empty == true && sprite_index != spr_slots_filled){
	empty = false;
	heldCard = global.selectedCard;
	heldCard.x = x;
	heldCard.y = y;
}
