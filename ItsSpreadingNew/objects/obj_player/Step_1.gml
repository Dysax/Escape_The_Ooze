// Default sprite
sprite_index = spr_player_idle_down;
image_index += 0;

//adjust player speed with weight at the start of every step
scr_adj_player_speed()

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