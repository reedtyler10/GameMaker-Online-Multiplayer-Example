// Follow player for camera movement (temporary)
for (var i=0; i<array_length(pdata); i++)
{
	if pdata[i].is_player = 1
	{
		x = pdata[i].x;
		y = pdata[i].y;
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