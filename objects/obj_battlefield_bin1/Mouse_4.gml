/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.canSelect = true && empty == true){
	empty = false;
	heldCard = global.selectedCard;
	heldCard.x = x;
	heldCard.y = y;
}

if (heldCard = global.selectedCard && empty == false){
	empty = true;
}