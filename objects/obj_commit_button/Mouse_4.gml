/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self)){
	//global.currentState = global.computerPlayState;
	if place_meeting(obj_battlefield_bin_1.x,obj_battlefield_bin_1.y,obj_card){
		var firstCard = instance_place(obj_battlefield_bin_1.x,obj_battlefield_bin_1.y,obj_card);
		calculateFirstAttack = firstCard.attackValue;
		calculateFirstDefese = firstCard.defeseValue;
	}
}