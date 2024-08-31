// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_all(){
	
	// Read packet flags
	#macro READ_NAME	1

	// Structures
	global.player_data = function() constructor
	{
		socket = -1;
		name = "";
		is_alive = false;
		x = 200;
		y = 200;
	}
	global.bullet = function() constructor
	{
		x = 0;
		y = 0;
		xspd = 0;
		yspd = 0;
	}
}