// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_all(){
	// Outgoing network flags
	#macro SEND_NAME			1
	#macro SEND_KEYPRESS		2
	#macro SEND_DIRECTION		3
		
	
	// Incoming network flags
	#macro READ_REQUEST_NAME	1
	#macro READ_FULLSTATE		2
	#macro READ_DISCONNECT		3
	#macro READ_PICKUP			4
	
	// Input flags
	#macro KEY_W				0
	#macro KEY_D				1
	#macro KEY_S				2
	#macro KEY_A				3
	#macro KEY_LC				4
	#macro KEY_RC				5
	
	// Structures
	global.player_data = function() constructor
	{
		socket = -1;
		
		is_player = 0;
		name = "";
		is_alive = false;
		can_shoot = false;
		can_deflect = 30;
		can_die = 180;
		dir = 0;
		x = 200;
		y = 200;
	}
	global.bullet = function() constructor
	{
		bid = -1;
		
		x = 0;
		y = 0;
		xspd = 0;
		yspd = 0;
	}
}