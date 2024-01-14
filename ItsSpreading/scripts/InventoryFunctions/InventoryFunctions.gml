function InventorySearch(name, quantity)
{
	for (var _i = 0; _i < INVENTORY_SLOTS; ++_i)
	{
		if (name.inventory[_i] == quantity)
		{
			return(_i);
		}
	}
	return(-1);
}

function InventoryRemove(name, quantity) {
	var _slot = InventorySearch(name, quantity);
	if (_slot != -1)
	{
		with (name) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function InventoryAdd(name, quantity) {
	var _slot = InventorySearch(name, -1);
	if (_slot != -1)
	{
		with (name) inventory[_slot] = quantity;
		return true;
	}
	else return false;
}