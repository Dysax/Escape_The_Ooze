// Easy way to do drop chances
// of different items.
// In this case we have 9 in 10 chance of dropping
// regular collectibles, and a 1 in 10 chance of
// dropping a heart.
// We assign the result to _drop.
var _drop = choose(obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_collectable, obj_heart);

// Create the chosen drop.
instance_create_layer(x + 0, y + 0, "Instances", _drop);