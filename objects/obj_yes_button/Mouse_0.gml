/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.giftcardActive == true && !place_meeting(x,y,obj_no_button)){
	room_goto(1);
	global.giftcardActive = false;
	obj_giftcard.visible = false;
	obj_yes_button.visible = false;
}