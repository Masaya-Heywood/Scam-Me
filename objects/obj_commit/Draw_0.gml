/// @description Insert description here
// You can write your code in this editor
draw_self();

if (position_meeting(mouse_x, mouse_y, self)) {
   draw_set_colour(c_white);
   draw_rectangle_color(mouse_x, mouse_y + 50, mouse_x + 250, mouse_y - 75,  c_black,  c_black,  c_black,  c_black, false);
   draw_text(mouse_x + 16, mouse_y - 48, "Discards cards in your hand \n and calculates damage.");
}