var _buffer = async_load[? "buffer"];

var flag = buffer_read(_buffer, buffer_u8);

switch(flag)
{
	case READ_REQUEST_NAME:
		send_name();
		break;
}