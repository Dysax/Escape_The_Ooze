
if (g.sprite_slot_0 != noone) {
    
    var draw_x = x;  
    var draw_y = y;  
    var scale = 2.5;

    // Draw the sprite with scaling
    draw_sprite_ext(g.sprite_slot_0, 0, draw_x, draw_y, scale, scale, 0, c_white, 1);
} else {
    // Some future behavior or drawing if no sprite is set
}



