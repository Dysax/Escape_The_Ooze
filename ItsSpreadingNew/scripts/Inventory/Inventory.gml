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
			inventory_item[index].quantity += _quantity;
		}
		else {
			item_set(_name, _quantity, _sprite);
		}
	}
	
	toString = function() {
		return json_stringify(inventory_items);
	}
}