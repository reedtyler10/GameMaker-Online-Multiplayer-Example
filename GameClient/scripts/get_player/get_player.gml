/// Gets the index of the player structure in the pdata array
function get_player(_sock){	
	if (array_length(self.pdata) == 0) {return -1;}
	
	for (var i=0; i<array_length(self.pdata); i++)
	{
		if (self.pdata[i].socket == _sock) {return i;}
	}
	
	return -1;
}