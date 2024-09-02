function read_fullstate( _buffer){
	var wall_count = buffer_read(_buffer, buffer_u8);
	for (var _wall=0; _wall<wall_count; _wall++)
	{		
		var _x1 = buffer_read(_buffer, buffer_u16);
		var _y1 = buffer_read(_buffer, buffer_u16);
		var _x2 = buffer_read(_buffer, buffer_u16);
		var _y2 = buffer_read(_buffer, buffer_u16);
		if (_wall > array_length(self.walls)-1) { continue; } // Don't recreate the wall if you already have it
		self.walls[_wall] = {
			x1 : _x1,
			y1 : _y1,
			x2 : _x2,
			y2 : _y2		
		}
	}	
	
	var player_count = buffer_read(_buffer, buffer_u8);
	for(var i=0; i<player_count; i++)
	{		
		var psock = buffer_read(_buffer, buffer_u8);
		var pindex = get_player(psock);
		if (pindex == -1) 
		{ 
			self.pdata[i] = new global.player_data();
			pindex = i;
		}
		self.pdata[pindex].socket = psock;
		self.pdata[pindex].is_player = buffer_read(_buffer, buffer_u8);		
		self.pdata[pindex].name = buffer_read(_buffer, buffer_string);
		self.pdata[pindex].is_alive = buffer_read(_buffer, buffer_bool);
		self.pdata[pindex].x = buffer_read(_buffer, buffer_u16);
		self.pdata[pindex].y = buffer_read(_buffer, buffer_u16);
	}
	
	var bullet_count = buffer_read(_buffer, buffer_u8)
	for(var _bullet = 0; _bullet<bullet_count; _bullet++)
	{
		var _bid = buffer_read(_buffer, buffer_u8);
		var bindex = get_bullet(_bid);
		if (bindex == -1) 
		{ 
			self.bdata[_bullet] = new global.bullet();
			bindex = _bullet;
		}
		self.bdata[bindex].bid = _bid;
		self.bdata[bindex].x = buffer_read(_buffer, buffer_u16);
		self.bdata[bindex].y = buffer_read(_buffer, buffer_u16);
		self.bdata[bindex].xspd = buffer_read(_buffer, buffer_f16);
		self.bdata[bindex].yspd = buffer_read(_buffer, buffer_f16);
	}
}