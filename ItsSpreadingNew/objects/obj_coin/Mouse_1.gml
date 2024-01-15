// add item to inv
global.inventory.item_add("Coin", 1, spr_coin);
// check inventory
// This will convert inventory items to a string and print it
var inventory_string = global.inventory.toString();
show_debug_message("Current Inventory: " + inventory_string);

// destroy coin instance object
instance_destroy();