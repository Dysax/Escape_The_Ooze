// Set the color of the popup text.
draw_set_colour(color);

// Sets the alpha for the text.
draw_set_alpha(image_alpha);

// Sets the texts font.
draw_set_font(fnt_small);

// Draw the text.
draw_text(x, y, string(abs(floor(text * 100))));

// Reset the draw alpha.
draw_set_alpha(1.0);