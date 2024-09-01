function send_name(){	
	buff = buffer_create(64, buffer_grow, 1);
	buffer_seek(buff, buffer_seek_start, 0);
	
	buffer_write(buff, buffer_u8, SEND_NAME);
	buffer_write(buff, buffer_string, self.name);
	
	network_send_packet(global.client, buff, buffer_get_size(buff));
	
	buffer_delete(buff);
}