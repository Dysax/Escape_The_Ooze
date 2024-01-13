// If not paused.
if (!global.paused)
{
	// Decrement with --.
	show_healthbar--;	
}

// If our healthbar timer is over 0...
if (show_healthbar > 0)
{
	// Draw the back of the healthbar.
	draw_sprite_ext(spr_healthbar_back, 0, x - 50, y + 5, 100 / 29, 1, 0, c_white, 1);

	// Draw the filling of the healthbar.
	draw_sprite_ext(spr_healthbar_fill_red, 0, x - 46, y + 9, 4 * (hitpoints / hitpoints_max), 0.9, 0, c_white, 1);
}