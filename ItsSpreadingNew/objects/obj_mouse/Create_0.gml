#macro g global
g.coolDown = false;
g.clicks = 0;
g.heldId = -1;

dontSelectList = [obj_baddie, obj_ooze];
listSize = array_length(dontSelectList);

for (var i = 0; i < listSize; i++;) {
	with (dontSelectList[i]) {
		if (!variable_instance_exists(id, "dontSelectMe")) {
			variable_instance_set(id, "dontSelectMe", true);
		}
	}
}




