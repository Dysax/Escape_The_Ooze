// add item to inv
global.inventory.item_add("Key", 1, spr_key);
// This will convert inventory items to a string and print it
var inventory_string = global.inventory.toString();
show_debug_message("Current Inventory: " + inventory_string);


// Optionally, destroy the key object after picking it up
instance_destroy();

