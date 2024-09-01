function read_keychange(_sock, _buffer){
	var _player = get_player(_sock);
	var _key = buffer_read(_buffer, buffer_u8);
	var _state = buffer_read(_buffer, buffer_u8);
	
	pdata[_player].key_state[_key] = _state;
}