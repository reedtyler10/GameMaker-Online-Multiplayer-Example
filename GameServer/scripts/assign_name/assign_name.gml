// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function assign_name( _sock, _buffer){
	pdata[get_player(_sock)].name = buffer_read(_buffer, buffer_string);
	addl($"Client {_sock} identified with name {pdata[get_player(_sock)].name}");
}