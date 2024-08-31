define_all();
global.client = network_create_socket(network_socket_tcp);
//global.authtoken = 0;

randomize();
name = get_a_name();
conn_string = "Connecting";
alarm[0] = 60;

connection = network_connect(global.client, "127.0.0.1", 7778);

if (connection < 0)
{
	conn_string = "Could not connect to server";
}

pdata = [];
bdata = [];
walls = [];