/// @description Insert description here
// You can write your code in this editor
computerHealth = 200;
attackDamage = 0;
defense = 0;
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