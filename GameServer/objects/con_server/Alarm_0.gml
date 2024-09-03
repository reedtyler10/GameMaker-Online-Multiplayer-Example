/// Bullet generation
if (array_length(pdata) > 0)
{
	if (get_bullet_count(0) < 250)
	{
		var spawn_chance = 32;
		spawn_chance += floor( get_bullet_count(-1) - array_length(pdata) );


		if (spawn_chance < 0) {spawn_chance = 0;}
		var _spawn = floor(random(spawn_chance)); // 0 means create a bullet
		if (_spawn == 0) 
		{
			var _pos = get_random_spawn();
			var _bullet = new_bullet();
			_bullet.x = _pos.x;
			_bullet.y = _pos.y;
	
			array_push(bdata, _bullet); 
		}
	}
}
else
{
	bdata = []; // If there are no players, remove all bullets to preserve memory
}
alarm[0] = 10;