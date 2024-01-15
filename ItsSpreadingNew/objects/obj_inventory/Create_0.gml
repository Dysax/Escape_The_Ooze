randomize();

inventory = new Inventory();

inventory_columns = 7;
inventory_rows = 4;

inventory.item_add("Key", 3, spr_key);

inventory.item_add("Key", 2, spr_key);
inventory.item_add("Coin", 10, spr_coin);

show_debug_message(inventory)

inventory.item_subtract("Key", 2);
inventory.item_subtract("Coin", 10);

show_debug_message(inventory)

draw_sprite(spr_inventory, -1, x, y);


