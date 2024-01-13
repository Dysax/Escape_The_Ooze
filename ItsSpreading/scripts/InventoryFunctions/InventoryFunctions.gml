function InventorySearch(rootObject, itemType)
{
	for (var _i = 0; _i < INVENTORY_SLOTS; ++_i)
	{
		if (rootObject.inventory[_i] == itemType)
		{
			return(_i);
		}
	}
	return(-1);
}

function InventoryRemove(rootObject, itemType) {
	var _slot = InventorySearch(rootObject, itemType);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = -1;
		return true;
	}
	else return false;
}

function InventoryAdd(rootObject, itemType) {
	var _slot = InventorySearch(rootObject, -1);
	if (_slot != -1)
	{
		with (rootObject) inventory[_slot] = itemType;
		return true;
	}
	else return false;
}