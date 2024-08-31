/// Compile the full game state and send it to the requesting client via their socket
function send_fullstate(_sock){
	#macro SEND_FULLSTATE	2
	
	show_debug_message($"Start send_fullstate({_sock}) | {array_length(self.pdata)}");
	buff = buffer_create(256, buffer_grow, 1);
	buffer_seek(self.buff, buffer_seek_start, 0);
	buffer_write(buff, buffer_u8, SEND_FULLSTATE);
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
		buffer_write(buff, buffer_string, self.pdata[i].name); 
		buffer_write(buff, buffer_bool, self.pdata[i].is_alive);
		buffer_write(buff, buffer_u16, self.pdata[i].x);
		buffer_write(buff, buffer_u16, self.pdata[i].y);
	}
	
	// --TODO> Write bullet count then a struct for each bullet
	show_debug_message($"End send_fullstate");
	network_send_packet(_sock, buff, buffer_get_size(buff));
	buffer_delete(buff);
}