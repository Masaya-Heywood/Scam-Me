/// @description Insert description here
// You can write your code in this editor
if (health <= 0){
	room = lose_room;
	instance_destroy();
}

if (room == cinematic_room_minion){
	instance_destroy();
}