// Set depth to negative y.
// This will cause instances to draw from
// top to bottom.
// Set depth based on y-coordinate
depth = -y;

// Set direction towards the hero.
direction = point_direction(x, y, obj_hero.x, obj_hero.y);

// Handling sprite flipping based on horizontal speed.
if (hspeed != 0) {
    image_xscale = -sign(hspeed) * abs(image_xscale); // abs(image_xscale) ensures the scale factor is retained
}

// Gradually scale the sprite over time
if (scale_progress < 1500) {
    // Scale the sprite
    var scale_factor = 1 + scale_progress / 100;
    image_xscale = scale_factor * sign(image_xscale); // Retain the direction flip
    image_yscale = scale_factor;

    // Increment scale_progress
    scale_progress++;
}