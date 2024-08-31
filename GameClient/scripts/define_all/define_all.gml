// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_all(){
	// Incoming network flags
	#macro READ_REQUEST_NAME	1
	#macro READ_FULLSTATE		2
	
	// Structures
	global.player_data = function() constructor
	{
		socket = -1;
		name = "";
		is_alive = false;
		x = 200;
		y = 200;
	}
}