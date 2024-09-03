move_players();
move_bullets();

for (var _player=0; _player<array_length(pdata); _player++)
{
	if (pdata[_player].can_die > 0) // Decrement invincibility frames
	{
		pdata[_player].can_die -= 1;
	}
	
	if (pdata[_player].can_deflect > 0) // Decrement deflect cooldown
	{
		pdata[_player].can_deflect -= 1;
	}
	
	send_fullstate(pdata[_player].socket);
}
