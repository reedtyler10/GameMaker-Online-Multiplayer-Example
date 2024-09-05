function fire_bullet(_player, _dir){
	var init_spd = 8
	
	var bullet = new_bullet();
	bullet.owner = self.pdata[_player].socket;
	bullet.x = self.pdata[_player].x;
	bullet.y = self.pdata[_player].y;
	bullet.xspd = cos(degtorad(_dir))*init_spd;
	bullet.yspd = -sin(degtorad(_dir))*init_spd;
	
	array_push(self.bdata, bullet);
}