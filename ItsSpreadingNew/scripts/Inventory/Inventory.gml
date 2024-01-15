function Inventory() constructor 
{
	inventory_items = [];
	
	item_set = function (_name, _quantity, _sprite) {
		array_push(inventory_items, {
			name: _name,
			quantity: _quantity,
			sprite: _sprite,
		});
	}
	
	item_find = function(_name) {
		for (var i = 0; i < array_length(inventory_items); ++i) {
			if(_name == inventory_items[i].name) {
				return i;
			}
		}
		return -1;
	}
	
	item_add = function(_name, _quantity, _sprite) {
		var index = item_find(_name);
		
		if(index >= 0) {
			inventory_items[index].quantity += _quantity;
		}
		else {
			item_set(_name, _quantity, _sprite);
		}
	}
	
	item_has = function(_name, _quantity) {
		var index = item_find(_name);
		
		if(index >= 0) {
			return inventory_items[index].quantity >= _quantity;
		}
		
		return false;
	}
	
	item_subtract = function (_name, _quantity) {
		var index = item_find(_name);
		
		if(index >= 0) {
			if(item_has(_name, _quantity)) {
				inventory_items[index].quantity -= _quantity;
				
				if(inventory_items[index].quantity <= 0) {
					item_remove(index);
				}
			}
		}
	}
	
	item_get = function() {
		return inventory_items;
	}
	
	item_remove = function(_index) {
		array_delete(inventory_items, _index, 1);
	}
	
	toString = function() {
		return json_stringify(inventory_items);
	}
}