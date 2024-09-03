function move_projectile(_obj, _xspd, _yspd){
	// Horizontal movement
	if (_obj.x + _xspd > 2048-64-10)
	{
		_obj.x = 2048-64-10;
		_obj.xspd = _obj.xspd*-1.2;
		_obj.yspd = _obj.yspd*1.2;
	}
	else if (_obj.x + _xspd < 64+10)
	{
		_obj.x = 64+10;
		_obj.xspd = _obj.xspd*-1.2;
		_obj.yspd = _obj.yspd*1.2;
	}
	else
	{
		_obj.x += _xspd
	}
	
	// Vertical movement
	if (_obj.y + _yspd > 1536-64-10)
	{
		_obj.y = 1536-64-10;
		_obj.xspd = _obj.xspd*1.2;
		_obj.yspd = _obj.yspd*-1.2;
	}
	else if (_obj.y + _yspd < 64+10)
	{
		_obj.y = 64+10;
		_obj.xspd = _obj.xspd*1.2;
		_obj.yspd = _obj.yspd*-1.2;
	}
	else
	{
		_obj.y += _yspd;
	}
	
	return _obj;
}