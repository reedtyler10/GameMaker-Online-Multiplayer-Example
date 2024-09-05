// Apply all actions of players
function act_players(){
	for(var _player=0; _player<array_length(self.pdata); _player++)
	{
		// Key actions
		if self.pdata[_player].is_alive == 0
		{
			if (self.pdata[_player].key_state[KEY_W] == 1) 
			{
				self.pdata[_player] = apply_move(self.pdata[_player], 0, -4);
			}
			if (self.pdata[_player].key_state[KEY_A] == 1) 
			{
				self.pdata[_player] = apply_move(self.pdata[_player], -4, 0);
			}
			if (self.pdata[_player].key_state[KEY_S] == 1) 
			{
				self.pdata[_player] = apply_move(self.pdata[_player], 0, 4);
			}
			if (self.pdata[_player].key_state[KEY_D] == 1) 
			{
				self.pdata[_player] = apply_move(self.pdata[_player], 4, 0);
			}
			if (self.pdata[_player].key_state[KEY_LC] == 1 && self.pdata[_player].can_shoot == true) 
			{
				fire_bullet(_player, self.pdata[_player].dir);
				self.pdata[_player].can_shoot = false;
			}
			if (self.pdata[_player].key_state[KEY_RC] == 1 && self.pdata[_player].can_deflect == 0) 
			{
				
			}	
		}
		
		// Life actions
		if (pdata[_player].is_alive > 0) // Decrement respawn timer
		{
			pdata[_player].is_alive--;
			if (pdata[_player].is_alive == 0) //respawn
			{
				var respawn = get_random_spawn();
				pdata[_player].x = respawn.x;
				pdata[_player].y = respawn.y;
			}
		}
		else if (pdata[_player].can_die > 0) // Decrement invincibility frames
		{			
			pdata[_player].can_die--;
		}
	
		if (pdata[_player].can_deflect > 0) // Decrement deflect cooldown
		{
			pdata[_player].can_deflect -= 1;
		}
	
		send_fullstate(pdata[_player].socket);
	}
}