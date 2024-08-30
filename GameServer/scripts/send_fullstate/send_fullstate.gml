// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function send_fullstate(_sock){
	buffer_seek(self.buff, buffer_seek_start, 0);
	buffer_write(buff, buff_u8, SEND_FULLSTATE);
	
	buffer_write(buff, buff_u8, 0);
}