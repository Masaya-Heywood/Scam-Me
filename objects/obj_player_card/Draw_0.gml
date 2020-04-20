/// @description Insert description here
// You can write your code in this editor

draw_self()
if (position_meeting(mouse_x, mouse_y, self)) {
   draw_set_colour(c_white);
   draw_text(mouse_x - 16, mouse_y - 48, toolPhrase);
}