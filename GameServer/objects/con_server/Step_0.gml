move_players();

for (var _player=0; _player<array_length(pdata); _player++)
{
	send_fullstate(pdata[_player].socket);
}
