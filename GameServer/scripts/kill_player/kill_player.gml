function kill_player(_pindex){
	self.pdata[_pindex].is_alive = 120;
	self.pdata[_pindex].can_die = 180;	
	self.pdata[_pindex].can_shoot = false;	
}