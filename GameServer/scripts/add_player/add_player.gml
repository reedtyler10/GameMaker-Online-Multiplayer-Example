// Adds a player structure to the list of active players
function add_player(_sock, _ip){
	show_debug_message($"Start add_player({_sock},{_ip}");
	var new_player = new global.player_data();
	new_player.socket = _sock;
	array_push(self.pdata, new_player);
	addl($"Client {_sock} connected from address: {_ip}");
	show_debug_message($"End add_player | {self.pdata[0].socket}");
}