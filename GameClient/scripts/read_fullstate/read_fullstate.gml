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
		self.pdata[i] = new global.player_data();
		self.pdata[i].is_player = buffer_read(_buffer, buffer_u8);
		self.pdata[i].name = buffer_read(_buffer, buffer_string);
		self.pdata[i].is_alive = buffer_read(_buffer, buffer_bool);
		self.pdata[i].x = buffer_read(_buffer, buffer_u16);
		self.pdata[i].y = buffer_read(_buffer, buffer_u16);
	}
}