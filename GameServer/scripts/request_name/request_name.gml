// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function request_name( _sock){
	
	
	buff = buffer_create(16, buffer_fast, 1);
	buffer_seek(buff, buffer_seek_start, 0);
	buffer_write(buff, buffer_u8, SEND_REQUEST_NAME);
	
	network_send_packet(_sock, buff, buffer_get_size(buff));
	
	buffer_delete(buff);
}