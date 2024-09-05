function broadcast_pickup(_bid){
	for (var _player=0; _player<array_length(self.pdata); _player++)
	{
		
		var buffer = buffer_create(8, buffer_grow, 1);
		
		buffer_write(buffer, buffer_u8, SEND_PICKUP);
		buffer_write(buffer, buffer_u8, _bid);
		
		network_send_packet(self.pdata[_player].socket, buffer, buffer_tell(buffer));
		buffer_delete(buffer);
	}
}