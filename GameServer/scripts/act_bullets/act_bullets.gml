function act_bullets(){
	for(var _bullet=0; _bullet<array_length(self.bdata); _bullet++)
	{
		var mark_for_deletion = false;
		
		if (self.bdata[_bullet].can_kill > 0)
		{
			self.bdata[_bullet].can_kill--;
		}
		
		if (self.bdata[_bullet].xspd != 0 || self.bdata[_bullet].yspd != 0) // Move alive bullets
		{
			self.bdata[_bullet] = move_projectile(	self.bdata[_bullet], 
													self.bdata[_bullet].xspd, 
													self.bdata[_bullet].yspd);
			for (var i=0; i<array_length(self.pdata); i++)
			{
				if (point_distance(self.bdata[_bullet].x, self.bdata[_bullet].y,
									self.pdata[i].x, self.pdata[i].y) < 16)
				{
					if (self.pdata[i].can_die > 0) {continue;}	// Player is invincible from just spawning
					if (self.bdata[_bullet].can_kill > 0 &&	 // Player owned bullet for less than 5 frames
						self.bdata[_bullet].owner == self.pdata[i].socket) { continue; }
						
					kill_player(i);					
					mark_for_deletion = true;
				}
			}
		}
		else																// Check pickup for dead bullets
		{
			for(var _player=0; _player<array_length(self.pdata); _player++)
			{
				if (point_distance(self.bdata[_bullet].x, self.bdata[_bullet].y,
									self.pdata[_player].x, self.pdata[_player].y) < 24)
				{
					if (self.pdata[_player].can_shoot == false && self.pdata[_player].is_alive == 0)
					{
						self.pdata[_player].can_shoot = true;
						mark_for_deletion = true;
					}
				}
			}
		}
		
		if (mark_for_deletion == true)
		{
			var _dead_bid = self.bdata[_bullet].bid;
			array_delete(self.bdata, _bullet, 1);
			broadcast_destroy_bullet(_dead_bid);
		}
	} //end _bullet for loop
}