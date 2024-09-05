function read_pickup(_buffer){
	var _bullet = buffer_read(_buffer, buffer_u8);
	array_delete(self.bdata, get_bullet(_bullet), 1);
}