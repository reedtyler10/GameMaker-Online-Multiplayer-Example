/// @description Insert description here
// You can write your code in this editor
if (room == rm_connecting)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(room_width/2,room_height/2-64, $"Your name is {name}");
	draw_text(room_width/2,room_height/2, conn_string);
}