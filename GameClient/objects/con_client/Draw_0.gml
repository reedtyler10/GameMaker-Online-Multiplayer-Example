/// @description Insert description here
// You can write your code in this editor
if (room == rm_connecting)
{
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(room_width/2,room_height/2-64, $"Your name is {name}");
	draw_text(room_width/2,room_height/2, conn_string);
}

if (room == rm_game)
{
	// Draw walls
	for(var _wall=0; _wall<array_length(walls); _wall++)
	{
		draw_set_color(c_white);
		draw_line(walls[_wall].x1, walls[_wall].y1, walls[_wall].x2, walls[_wall].y2);
	}
	
	// Draw_players

	for(var _player=0; _player<array_length(pdata); _player++)
	{
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_text(pdata[_player].x, pdata[_player].y-48, pdata[_player].name);
		if (pdata[_player].is_player == 1)
		{
			draw_sprite_ext(spr_player, 0, pdata[_player].x, pdata[_player].y,1,1,pdata[_player].dir,c_white,1);
		}
		else
		{
			draw_sprite_ext(spr_enemy, 0, pdata[_player].x, pdata[_player].y,1,1,pdata[_player].dir,c_white,1);
		}
	}
	
	// Draw_bullets
	for (var _bullet=0; _bullet<array_length(bdata); _bullet++)
	{
		draw_sprite(spr_bullet,0,bdata[_bullet].x,bdata[_bullet].y);
	}
}