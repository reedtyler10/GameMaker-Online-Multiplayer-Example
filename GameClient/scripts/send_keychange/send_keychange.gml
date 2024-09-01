function send_keychange(_key, _state){
	buffer = buffer_create(64, buffer_grow, 1);
	
	buffer_write(buffer, buffer_u8, SEND_KEYPRESS);
	buffer_write(buffer, buffer_u8, _key);			// w,a,s,d and lc, rc all assosciate to different bindings
	buffer_write(buffer, buffer_u8, _state);		// 1 is pressed, 0 is released
	
	network_send_packet(global.client, buffer, buffer_tell(buffer));
	
	buffer_delete(buffer);
}