function broadcast_disconnect(_sock){
	for (var _player=0; _player<array_length(self.pdata); _player++)
	{
		if (self.pdata[_player].socket == _sock) { continue; }
		
		var buffer = buffer_create(8, buffer_grow, 1);
		
		buffer_write(buffer, buffer_u8, SEND_DISCONNECT);
		buffer_write(buffer, buffer_u8, _sock);
		
		network_send_packet(self.pdata[_player].socket, buffer, buffer_tell(buffer));
		buffer_delete(buffer);
	}
}