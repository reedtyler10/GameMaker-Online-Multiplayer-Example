/// Gets the number of bullets that exist in the game right now
/// -1 for bullets that haven't been picked up yet
/// 1 for bullets that are currently in motion
/// 0 for all bullets
function get_bullet_count(_alive){
	var count = 0;
	for(var _bullet = 0; _bullet<array_length(self.bdata); _bullet++)
	{
		if (self.bdata[_bullet].xspd == 0 &&
			self.bdata[_bullet].yspd == 0 &&
			(_alive == -1 || _alive == 0))
		{
			count++;
		}
		if (self.bdata[_bullet].xspd != 0 ||
			self.bdata[_bullet].yspd != 0 &&
			(_alive == 1 || _alive == 0))
		{
			count++;
		}
	}
	return count;
}