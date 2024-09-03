function move_bullets(){
	for(var _bullet=0; _bullet<array_length(self.bdata); _bullet++)
	{
		if (self.bdata[_bullet].xspd != 0 || self.bdata[_bullet].yspd != 0) // Move alive bullets
		{
			self.bdata[_bullet] = move_projectile(	self.bdata[_bullet], 
													self.bdata[_bullet].xspd, 
													self.bdata[_bullet].yspd);
		}
		else																// Check pickup for dead bullets
		{
			for(var _player=0; _player<array_length(pdata); _player++)
			{
				if (point_distance(self.bdata[_bullet].x, self.bdata[_bullet].y,
									self.pdata[_player].x, self.pdata[_player].y) < 14)
				{
					if (self.pdata[_player].can_shoot = false)
					{
						self.pdata[_player].can_shoot = true;
						array_delete(self.bdata, _bullet, 1);
					}
				}
			}
		}
	}
}