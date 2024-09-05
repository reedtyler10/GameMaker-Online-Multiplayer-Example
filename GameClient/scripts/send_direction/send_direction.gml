function send_direction(_dir){
	buffer = buffer_create(8, buffer_grow, 1);
	
	buffer_write(buffer, buffer_u8, SEND_DIRECTION);
	buffer_write(buffer, buffer_u16, _dir);
	
	network_send_packet(global.client, buffer, buffer_tell(buffer));
	
	buffer_delete(buffer);
}