draw_sprite_stretched
(
	spr_Inventory,
	0,
	x-6,
	y-6,
	12 + rowLength * 36,
	12+(((INVENTORY_SLOTS-1) div rowLength) + 1) * 36
);

for (var _i = 0; _i < INVENTORY_SLOTS; ++_i)
{
	var xx = x + (_i mod rowLength) * 36 + 2;
	var yy = y + (_i div rowLength) * 36 + 2;
	draw_sprite(spr_Slot, 0, xx, yy)
	if (inventory[_i] != -1)
	{
		draw_sprite(spr_collectible_gen, inventory[_i], xx, yy);
	}
}
