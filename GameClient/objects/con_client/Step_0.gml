// Follow player for camera movement (temporary)
for (var i=0; i<array_length(pdata); i++)
{
	if pdata[i].is_player = 1
	{
		x = pdata[i].x + ((mouse_x - pdata[i].x)/4);
		y = pdata[i].y + ((mouse_y - pdata[i].y)/4);
		send_direction( floor(point_direction(pdata[i].x, pdata[i].y, mouse_x, mouse_y)) );
		camera_set_view_pos(view_camera[0], pdata[i].x + ((mouse_x - pdata[i].x)/4 - (view_wport[0]/2)), 
								pdata[i].y + ((mouse_y - pdata[i].y)/4) - (view_hport[0]/2));
		break;
	}
}

// Look for inputs
if (keyboard_check_pressed(ord("W")))		{ send_keychange(KEY_W, 1); }
if (keyboard_check_pressed(ord("A")))		{ send_keychange(KEY_A, 1); }
if (keyboard_check_pressed(ord("S")))		{ send_keychange(KEY_S, 1); }
if (keyboard_check_pressed(ord("D")))		{ send_keychange(KEY_D, 1); }
if (mouse_check_button_pressed(mb_left))	{ send_keychange(KEY_LC, 1); }
if (mouse_check_button_pressed(mb_right))	{ send_keychange(KEY_RC, 1); }

if (keyboard_check_released(ord("W")))		{ send_keychange(KEY_W, 0); }
if (keyboard_check_released(ord("A")))		{ send_keychange(KEY_A, 0); }
if (keyboard_check_released(ord("S")))		{ send_keychange(KEY_S, 0); }
if (keyboard_check_released(ord("D")))		{ send_keychange(KEY_D, 0); }
if (mouse_check_button_released(mb_left))	{ send_keychange(KEY_LC, 0); }
if (mouse_check_button_released(mb_right))	{ send_keychange(KEY_RC, 0); }