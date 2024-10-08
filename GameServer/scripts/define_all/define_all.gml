// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function define_all(){
	// Outgoing packet flags
	#macro SEND_REQUEST_NAME	1
	#macro SEND_FULLSTATE		2
	#macro SEND_DISCONNECT		3
	#macro SEND_DESTROY_BULLET	4
	
	// Incoming packet flags
	#macro READ_NAME			1
	#macro READ_KEYCHANGE		2
	#macro READ_DIRECTION		3
	
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
		
		
		name = "";
		is_alive = 0;
		can_shoot = false;
		can_deflect = 30;
		can_die = 180;
		key_state = [0,0,0,0,0,0];
		dir = 0;
		var spawn = get_random_spawn();
		x = spawn.x;
		y = spawn.y;
	}
	
	global.bullet = function() constructor
	{
		bid = -1;
		var temp_start = 0;
		var temp_bid = 0;
		while(bid == -1)
		{			
			for (var i=0; i<array_length(self.bdata); i++)
			{
				if (self.bdata[i].bid == temp_bid)
				{
					temp_bid++;
					break;
				}
			}
			if (temp_start == temp_bid) { bid = temp_bid; }
		}
		x = 0;
		y = 0;
		xspd = 0;
		yspd = 0;
		
		owner = 0;
		can_kill = 5;
	}
}