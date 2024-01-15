// Initialize global inventory
global.inventory = new Inventory();
//global.inventory.item_add("Key", 1, spr_key);

var slot_counter = 0;
with (obj_inv_slot) {
    slotID = slot_counter;
    slot_counter += 1;
}