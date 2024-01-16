#macro g global
g.coolDown = false;
g.clicks = 0;
g.heldId = -1;

selectList = [obj_item_parent];
listSize = array_length(selectList);

for (var i = 0; i < listSize; i++;) {
	with (selectList[i]) {
		if (!variable_instance_exists(id, "SelectMe")) {
			variable_instance_set(id, "SelectMe", true);
		}
	}
}




