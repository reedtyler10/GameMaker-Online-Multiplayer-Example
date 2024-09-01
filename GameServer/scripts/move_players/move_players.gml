function move_players(){
	for(var _player=0; _player<array_length(self.pdata); _player++)
	{
		if (self.pdata[_player].key_state[KEY_W] == 1) 
		{
			self.pdata[_player].y -= 4;
		}
		if (self.pdata[_player].key_state[KEY_A] == 1) 
		{
			self.pdata[_player].x -= 4;
		}
		if (self.pdata[_player].key_state[KEY_S] == 1) 
		{
			self.pdata[_player].y += 4;
		}
		if (self.pdata[_player].key_state[KEY_D] == 1) 
		{
			self.pdata[_player].x += 4;
		}
	}
}