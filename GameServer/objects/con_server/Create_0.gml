define_all();
log = "";
randomize();
authtoken = floor(random(255));
server = network_create_server(network_socket_tcp, 7778, 32);

if (server < 0 )
{
	show_message_async("You done goofed");
}
else
{
	addl("Server started with id " + string(server) );
}

//game data
pdata = [];
bdata = [];
walls = [];
bullets = [];
generate_walls();

alarm[0] = 10;