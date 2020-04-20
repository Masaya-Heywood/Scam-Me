/// @description Insert description here
// You can write your code in this editor

draw_self();

if (position_meeting(mouse_x, mouse_y, obj_computer)) {
   draw_set_colour(c_white);
   draw_text(mouse_x - 16, mouse_y - 48, toolPhrase);
}

draw_sprite(spr_sword,1,x - 20,y);
draw_sprite(spr_shield,1,x + 20,y);