// The movement speed of the
// enemy along its path.
move_speed = 2;

// This will be true when the baddie
// is attacking the player, otherwise
// it will be false.
attacking = false;

// Starts following the path
// stored in the path_to_follow
// variable. This is created in
// the "Variable Definitions" 
// menu.
// path_action_continue means that
// once it reaches the end of that
// path, it continues following it
// and doesn't stop.
path_start(path_to_follow, move_speed, path_action_continue, true);