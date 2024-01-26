// Check if the player is colliding with an elliptical
// area surrounding the baddie
// Its size is 100 pixels around the baddie (using
// the relative option)
animation_timer--
if(animation_timer <= 0) {
	sprite_index = spr_slime_idle
}
var attackRange = 5;
var pursueRange = 220;
var baddieElipsePursue = collision_ellipse(x - pursueRange, y - pursueRange, x + pursueRange, y + pursueRange, obj_player, true, 1);
var baddieElipseAttack = collision_ellipse(x - attackRange, y - attackRange, x + attackRange, y + attackRange, obj_player, true, 1);
changeDirTimer--
if((baddieElipsePursue))
{
	// Get the distance to the player
	// on the X axis
	var dist_x = obj_player.x - x;
	
	// Get the distance to the player
	// on the Y axis
	var dist_y = obj_player.y - y;
		
	//enemy moves to player
	direction=point_direction(x,y,obj_player.x,obj_player.y)
	speed = 1.2
	
	if ((baddieElipseAttack)) {
		
		// Then check if the baddie is
		// not attacking right now
		if(attacking == false)
		{
			// In that case, set 'attacking'
			// to true so it starts attacking
			attacking = true;
		
			// If the X distance is less than -50
			// meaning the player is to the
			// LEFT of the baddie
			if(dist_x < -50)
			{
				// Switch to the 'side attack'
				// sprite
				sprite_index = spr_slime_attack_side;
				image_index = 0;
		
				// Flip the sprite so it faces left
				// instead of right
				image_xscale = -1;
				image_yscale = 1;
			}
	
			// Otherwise,
			else
			{
				// If the X distance is greater than
				// 50 meaning the player is to the
				// RIGHT of the baddie
				if(dist_x > 50)
				{
					// Switch to the 'side attack'
					// sprite
					sprite_index = spr_slime_attack_side;
					image_index = 0;
			
					// But keep its original scale
					// so it faces right
					image_xscale = 1;
					image_yscale = 1;
				}
		
				// Otherwise,
				else
				{
					// If the Y distance is less than -50
					// meaning the player is ABOVE the
					// baddie
					if(dist_y < -30)
					{
						// Switch to the 'up attack'
						// sprite
						sprite_index = spr_slime_attack_up;
						image_index = 0;
					}
			
					// Otherwise,
					else
					{
						// Switch to the 'down attack'
						// sprite as that's the only
						// direction left
						sprite_index = spr_slime_attack_down;
						image_index = 0;
					}
				}
			}
		}
	}
} else {
	speed = 1;
	if(changeDirTimer <= 0) {
		changeDirTimer = 120
		direction = choose(0,90,180,270)
		show_debug_message("new dir: " + string(direction))
	}
}
	

//fix baddies stuck in tables by moving them to an open space
isCollidingTable = place_meeting(x,y, obj_table2) | place_meeting(x,y, obj_table1);
isCollidingBed = place_meeting(x,y, obj_bed)
isColliding = isCollidingTable | isCollidingBed


if (place_meeting(x, y, obj_collision_parent)) {
	for (var i = 0; i < 1000; ++i) {
		if (!place_meeting(x + i, y, obj_collision_parent)) {
			x += i;
			break;
		}
		if (!place_meeting(x - i, y, obj_collision_parent)) {
			x -= i;
			break;
		}
		if (!place_meeting(x, y + i, obj_collision_parent)) {
			y += i;
			break;
		}
		if (!place_meeting(x, y - i, obj_collision_parent)) {
			y -= i;
			break;
		}
		if (!place_meeting(x + i, y + i, obj_collision_parent)) {
			x += i;
			y+=i;
			break;
		}
		if (!place_meeting(x - i, y-i, obj_collision_parent)) {
			x -= i;
			y-=i;
			break;
		}
		if (!place_meeting(x-i, y + i, obj_collision_parent)) {
			y += i;
			x-=i;
			break;
		}
		if (!place_meeting(x+i, y - i, obj_collision_parent)) {
			y -= i;
			x +=i;
			break;
		}
	}
}