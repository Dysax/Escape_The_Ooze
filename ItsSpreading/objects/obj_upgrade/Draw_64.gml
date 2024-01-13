// Checks if glow highlight should show.
if (mouse_over)
{
	// Draws the glow highlight.
	draw_sprite(spr_card_glow, 0, x, y);
}

// Draws the upgrade object.
draw_self();

// Checks if the upgrade has been set.
if (upgrade_data == undefined)
{
	// Exits the event.
	exit;
}

// Set the upgrade font.
draw_set_font(fnt_medium);

// Set the font colour and alpha.
draw_set_colour($41d7ff);
draw_set_alpha(1);

// Draw the upgrade text.
draw_text(x, y + 185, string(upgrade_data[? "title"]));

// Set the font colour and alpha.
draw_set_colour(c_white);
draw_set_alpha(1);

// Set the upgrade font.
draw_set_font(fnt_card_name);

// Draw the upgrade text.
draw_text(x, y - 50, string(upgrade_data[? "weapon_name"]));

// Set the upgrade font.
draw_set_font(fnt_card_description);

// Draw the upgrade text.
draw_text(x, y + 40, string(upgrade_data[? "description"]));

// Draw the upgrade icon.
draw_sprite(upgrade_data[? "icon"], 0, x, y - 200);

// Set draw alpha.
draw_set_alpha(roll_alpha);

// Draw sprite.
draw_sprite(spr_upgrade_hide, 0, x, y);

// Set draw alpha.
draw_set_alpha(1);