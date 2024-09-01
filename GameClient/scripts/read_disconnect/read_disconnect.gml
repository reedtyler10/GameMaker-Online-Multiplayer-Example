function read_disconnect(_buffer){
	var _player = buffer_read(_buffer, buffer_u8);
	array_delete(self.pdata, get_player(_player), 1);
}