//draw_text(10, 10, "draw event is running");

//show_debug_message("Draw event for obj_inv_slot with ID: " + string(slotID) + " is running.");

// Draw Event for obj_inv_slot
//draw_text(x, y - 20, "Slot ID: " + string(slotID));

// Retrieve the array from the inventory struct.
var items_array = global.inventory.item_get();


// Check if the slotID is valid.
if (slotID >= 0 && slotID < array_length(items_array)) {
    var item = items_array[slotID];

    if (item != undefined) {
        // Check if the sprite exists before trying to draw it.
        if (item.sprite != undefined && sprite_exists(item.sprite)) {
            draw_sprite(item.sprite, 0, x, y);
        }
	}

}

