/// Gets the index of the player structure in the pdata array
function get_bullet(_bid){	
	if (array_length(self.bdata) == 0) {return -1;}
	
	for (var i=0; i<array_length(self.bdata); i++)
	{
		if (self.bdata[i].bid == _bid) {return i;}
	}
	
	return -1;
}