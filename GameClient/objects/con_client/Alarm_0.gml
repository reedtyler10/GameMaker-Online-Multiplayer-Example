if (conn_string == "Connecting") {conn_string = "Connecting.";}
else if (conn_string == "Connecting.") {conn_string = "Connecting..";}
else if (conn_string == "Connecting..") {conn_string = "Connecting...";}
else if (conn_string == "Connecting...") {conn_string = "Connecting";}

if (room == rm_connecting) {alarm[0] = 30;}