// If the pause screen is open...
if (instance_exists(obj_pause_screen))
{
	// Exit event.
	exit;
}

// If the game over screen is open...
if (instance_exists(obj_game_over))
{
	// Exit event.
	exit;
}

// If the end screen is open...
if (instance_exists(obj_template_complete))
{
	// Exit event.
	exit;
}

// If the upgrade screen is open...
if (instance_exists(obj_upgrade))
{
	// Exit event.
	exit;
}

// If the button is active.
if (instance_exists(obj_pause_button))
{
	// If the pause button is clicked.
	if (obj_pause_button.is_clicked)
	{
		// Exit event.
		exit;
	}
}

// If the left mouse button is NOT pressed...
if (!mouse_check_button(mb_left))
{
	// Exit event.
	exit;
}

// Draw the large joytick "back" sprite at the anchor point.
draw_sprite(spr_joystick_big, 0, global.mouse_anchor_x, global.mouse_anchor_y);

// Get the distance from the anchor point
// to the current mouse position.
var _dist = min(point_distance(global.mouse_anchor_x, global.mouse_anchor_y, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)), 100);

// Draw the joystick "thumb".
draw_sprite(spr_joystick_small, 0, global.mouse_anchor_x + lengthdir_x(_dist, direction), global.mouse_anchor_y + lengthdir_y(_dist, direction));