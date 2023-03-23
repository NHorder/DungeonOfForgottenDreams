// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerCollision(){
	var _collision = false;
	
	// Horixontal Tiles
	
	if (tilemap_get_at_pixel(collisionMap,x + hSpeed,y)){
		x -= x mod TILE_SIXE;
		
		if (sign(hSpeed) == 1){
			x += TILE_SIXE-1;
		}
		hSpeed = 0;
		_collision = true;
	}
	
	// Horixontal Move Commit
	x+= hSpeed;
	
	
	
	
	// Vertical Tiles
	
	if (tilemap_get_at_pixel(collisionMap,x,y + vSpeed)){
		y -= y mod TILE_SIXE;
		
		if (sign(vSpeed) == 1){
			y += TILE_SIXE-1;
		}
		vSpeed = 0;
		_collision = true;
	}
	
	// Horixontal Move Commit
	y += vSpeed;
	
	
	
	return _collision;
}