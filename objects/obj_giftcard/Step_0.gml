/// @description Insert description here
// You can write your code in this editor
if (!position_meeting(mouse_x,mouse_y,self) && global.giftcardActive == true){
	global.giftcardActive = false;
	obj_giftcard.visible = false;
}