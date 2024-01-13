// Checks no menus are showing.
if (!instance_exists(obj_pause_screen) && !instance_exists(obj_upgrade_screen) && !instance_exists(obj_game_over) && !instance_exists(obj_template_complete))
{
	// Draw self.
	draw_self();
}