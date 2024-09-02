function read_fullstate( _buffer){
	var wall_count = buffer_read(_buffer, buffer_u8);
	for (var _wall=0; _wall<wall_count; _wall++)
	{
		self.walls[_wall] = {
			x1 : buffer_read(_buffer, buffer_u16),
			y1 : buffer_read(_buffer, buffer_u16),
			x2 : buffer_read(_buffer, buffer_u16),
			y2 : buffer_read(_buffer, buffer_u16)			
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
}