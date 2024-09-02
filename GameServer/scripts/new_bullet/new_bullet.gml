function new_bullet(){
	var _bid = -1;
	var temp_start = 0;
	var temp_bid = 0;
	while(_bid == -1)
	{			
		for (var i=0; i<array_length(self.bdata); i++)
		{
			if (self.bdata[i].bid == temp_bid)
			{
				temp_bid++;
				break;
			}
		}
		if (temp_start == temp_bid) 
		{ 
			_bid = temp_bid; 
		}
		else
		{
			temp_start = temp_bid;
		}
	}
	var _x = 0;
	var _y = 0;
	var _xspd = 0;
	var _yspd = 0;
	
	return {bid : _bid, x : _x, y : _y, xspd : _xspd, yspd : _yspd};
}