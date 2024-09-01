var _ip = async_load[? "ip"];
var _type = async_load[? "type"];

if (_type = network_type_connect)
{
	var _sock = async_load[? "socket"];
	add_player(_sock, _ip);
	request_name(_sock);
	exit;
}
if (_type = network_type_disconnect)
{
	var _sock = async_load[? "socket"];
	remove_player(_sock);
	addl($"Client {_sock} disconnected");
	exit;
}
if (_type = network_type_data)
{
	var _buffer = async_load[? "buffer"];
	var _client = async_load[? "id"];
	
	var flag = buffer_read(_buffer, buffer_u8);
	switch(flag)
	{
		case READ_NAME:
			assign_name(_client, _buffer);
			send_fullstate(_client);
			break;
			
		case READ_KEYCHANGE:
			read_keychange(_client, _buffer);
			break;
	}
}

