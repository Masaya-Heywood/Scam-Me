/// @description Insert description here
// You can write your code in this editor
if (position_meeting(mouse_x,mouse_y,self) && global.downloadActive == false){
	global.downloadActive = true;
	obj_download_box.visible = true;
}