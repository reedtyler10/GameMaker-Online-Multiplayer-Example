/// Compile the full game state and send it to the requesting client via their socket
function send_fullstate(_sock){

	
	buff = buffer_create(256, buffer_grow, 1);
	buffer_seek(self.buff, buffer_seek_start, 0);
	buffer_write(buff, buffer_u8, SEND_FULLSTATE);
	
	// Write wall count then a struct for each wall
	buffer_write(buff, buffer_u8, array_length(self.walls));
	for (var _wall=0; _wall<array_length(self.walls); _wall++)
	{
		buffer_write(buff, buffer_u16, self.walls[_wall].x1);
		buffer_write(buff, buffer_u16, self.walls[_wall].y1);
		buffer_write(buff, buffer_u16, self.walls[_wall].x2);
		buffer_write(buff, buffer_u16, self.walls[_wall].y2);
	}
	
	// Write player count then a struct for each player
	buffer_write(buff, buffer_u8, array_length(self.pdata));
	for (var i=0; i<array_length(self.pdata); i++)
	{
		if (self.pdata[i].socket = _sock)
		{
			buffer_write(buff, buffer_u8, 1); // This struct is you
		}
		else
		{
			buffer_write(buff, buffer_u8, 0); // This struct is everyone else
		}
		buffer_write(buff, buffer_u8, self.pdata[i].socket);
		buffer_write(buff, buffer_string, self.pdata[i].name); 
		buffer_write(buff, buffer_bool, self.pdata[i].is_alive);
		buffer_write(buff, buffer_u16, self.pdata[i].x);
		buffer_write(buff, buffer_u16, self.pdata[i].y);
	}
	
	// --TODO> Write bullet count then a struct for each bullet
	network_send_packet(_sock, buff, buffer_get_size(buff));
	buffer_delete(buff);
}