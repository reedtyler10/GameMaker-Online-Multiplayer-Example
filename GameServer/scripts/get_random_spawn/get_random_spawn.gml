function get_random_spawn(){
	var _x = floor (random_range(64+16, 2048-64-16));
	var _y = floor (random_range(64+16, 1536-64-16));
	return { x : _x, y : _y};
}