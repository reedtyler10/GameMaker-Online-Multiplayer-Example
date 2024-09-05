var _buffer = async_load[? "buffer"];

var flag = buffer_read(_buffer, buffer_u8);

switch(flag)
{
	case READ_REQUEST_NAME:
		send_name();
		break;
		
	case READ_FULLSTATE:
		read_fullstate(_buffer);
		if (room == rm_connecting) { room_goto(rm_game);}
		break;
		
	case READ_DISCONNECT:
		read_disconnect(_buffer);
		break;
		
	case READ_PICKUP:
		read_pickup(_buffer);
		break;
}