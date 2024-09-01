function generate_walls(){
	self.walls[0] = { x1 : 64, y1 : 64, x2 : 2048-64, y2 : 64};				// --
	self.walls[1] = { x1 : 64, y1 : 64, x2 : 64, y2 : 1536-64};				// |
	self.walls[2] = { x1 : 64, y1 : 1536-64, x2 : 2048-64, y2 : 1536-64};	// --
	self.walls[3] = { x1 : 2048-64, y1 : 64, x2 : 2048-64, y2 : 1536-64};	// |
}