// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function authenticate_client(_identifier){
	if (_identifier == con_server.authtoken)
	{
		return true;
	}
	return false;
}