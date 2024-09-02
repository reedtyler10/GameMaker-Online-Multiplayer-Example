function apply_move(_player, _xspd, _yspd){
	// Horizontal movement
	if (_player.x + _xspd > 2048-64-10)
	{
		_player.x = 2048-64-10;
	}
	else if (_player.x + _xspd < 64+10)
	{
		_player.x = 64+10;
	}
	else
	{
		_player.x += _xspd
	}
	
	// Vertical movement
	if (_player.y + _yspd > 1536-64-10)
	{
		_player.y = 1536-64-10;
	}
	else if (_player.y + _yspd < 64+10)
	{
		_player.y = 64+10;
	}
	else
	{
		_player.y += _yspd;
	}
	
	return _player;
}