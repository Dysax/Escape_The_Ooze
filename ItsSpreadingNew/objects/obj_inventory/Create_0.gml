randomize();

inventory = new Inventory();

inventory.item_add("Key", 3, spr_key);
// this line causes a bug, no idea why
//inventory.item_add("Key", 2, spr_key);
inventory.item_add("Coin", 10, spr_coin);

show_debug_message(inventory)



