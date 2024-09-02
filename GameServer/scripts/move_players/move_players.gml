function move_players(){
	for(var _player=0; _player<array_length(self.pdata); _player++)
	{
		if self.pdata[_player].is_alive == true
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
		}
	}
}