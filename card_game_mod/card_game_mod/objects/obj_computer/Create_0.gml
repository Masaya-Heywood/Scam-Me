/// @description Insert description here
// You can write your code in this editor
computerHealth = 200;
attackDamage = 0;
defense = 0;
depth = 20;
persistent = true

attackModifier = 0;
defenseModifer = 0;

attackReveal = "";
defenseReveal = "";
revealCap = 7;

modeAggresive = 0;
modeDefensive = 1;
modeVeryAggresive = 2;
modeVeryDefensive = 3;
modeReveal = "";

toolPhrase = "";

draw_sprite(spr_sword,1,x - 40,y);
draw_sprite(spr_shield,1,x + 40,y);

attackPhrase = "You shouldn't see this";
randomAbilityNum = floor(random_range(0,4));
if (randomAbilityNum == modeAggresive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_aggro)
} else if (randomAbilityNum == modeDefensive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_def)
} else if (randomAbilityNum == modeVeryAggresive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_super_aggro)
} else if (randomAbilityNum == modeVeryDefensive){
	instance_create_depth(obj_ability_placeholder.x, obj_ability_placeholder.y, 1, obj_super_def)
}

instance_create_depth(obj_passive_placeholder.x, obj_passive_placeholder.y, 1, obj_passive_scambot);