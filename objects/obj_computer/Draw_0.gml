/// @description Insert description here
// You can write your code in this editor

draw_self();

var drawingTool = false
if (position_meeting(mouse_x, mouse_y - 40, obj_computer)) {
   draw_set_colour(c_white);
   draw_text(mouse_x + 16, mouse_y - 48, toolPhrase);
   drawingTool = true
} else {
	drawingTool = false;	
}


if (position_meeting(mouse_x - 50, mouse_y - 28, obj_computer) && !drawingTool = true) {
   draw_set_colour(c_white);
   draw_text(mouse_x + 16, mouse_y - 48, "Approximiate Defense");
}

if (position_meeting(mouse_x + 100, mouse_y - 28, obj_computer)) {
   draw_set_colour(c_white);
   draw_text(mouse_x + 16, mouse_y - 48, "Approximiate Attack");
}

draw_sprite(spr_sword,1,x - 50,y);
draw_text(x - 50, y - 28, attackReveal);
draw_sprite(spr_shield,1,x + 100,y);
draw_text(x + 100, y - 28, defenseReveal);
draw_sprite(spr_heart,1,x + 150,y);
draw_text(x + 180, y - 28, computerHealth);

draw_text(x, y + 118, modeReveal);