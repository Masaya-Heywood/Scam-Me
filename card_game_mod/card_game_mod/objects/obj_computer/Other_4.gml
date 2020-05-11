/// @description Insert description here
// You can write your code in this editor

if (room = bossRoom) {
attackPhrase = "You shouldn't see this";
randomAbilityNum = floor(random_range(0,7));
if (randomAbilityNum == modeAggresive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_aggro)
} else if (randomAbilityNum == modeDefensive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_def)
} else if (randomAbilityNum == modeVeryAggresive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_super_aggro)
} else if (randomAbilityNum == modeVeryDefensive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_super_def)
} else if (randomAbilityNum == 5 || 6){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_neutral)
}

instance_create_depth(obj_passive_placeholder.x, obj_passive_placeholder.y, 1, obj_passive_scambot);
}