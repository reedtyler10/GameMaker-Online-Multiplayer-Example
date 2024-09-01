// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_all(){
	// Outgoing packet flags
	#macro SEND_REQUEST_NAME	1
	#macro SEND_FULLSTATE		2
	#macro SEND_DISCONNECT		3
	
	// Incoming packet flags
	#macro READ_NAME			1
	#macro READ_KEYCHANGE		2
	
	// Input flags
	#macro KEY_W				0
	#macro KEY_D				1
	#macro KEY_S				2
	#macro KEY_A				3
	#macro KEY_LC				10
	#macro KEY_RC				11

	// Structures
	global.player_data = function() constructor
	{
		socket = -1;
		name = "";
		is_alive = false;
		can_shoot = false;
		can_die = 180;
		key_state = [0,0,0,0,0,0];
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