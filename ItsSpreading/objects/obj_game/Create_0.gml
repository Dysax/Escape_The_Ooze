// Start the game music on a loop.
audio_play_sound(snd_music_game, 0, 1, 1.0, undefined, 1.0);

// Set the experience goal to reach the next level.
global.xp_goal = 10;

// Set current experience.
global.xp = 0;

// Set the current level.
global.level = 1;

// Set the cooldown time for spawning enemies.
//global.enemy_spawn_speed = 60;

// Set starting enemy health bonus.
// This is a multiplier, and is increased each wave.
// Result: enemy hp = enemy base hp * health bonus.
global.enemy_health_bonus = 1;

// Create the hero in the center of the room.
instance_create_layer(room_width / 2, room_height / 2, "Instances", obj_hero);

// Execute the shooting weapon reset function,
// initializing values for that weapon.
weapon_shooting_reset();

// Execute the swipe weapon reset function,
// initializing values for that weapon.
weapon_swipe_reset();

// Execute the trail weapon reset function,
// initializing values for that weapon.
weapon_trail_reset();

// Create the pause button.
instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);

// Sets cooldown for enemy spawning time (from frames to seconds).
//spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);


global.enemy_spawned = false; 

// Function handles enemy spawning.
spawn_enemy = function()
{
    if (global.enemy_spawned)
    {
        // Exit if the enemy has already been spawned.
        return;    
    }

    // Check various conditions to prevent enemy spawning.
    if (instance_exists(obj_upgrade) || instance_exists(obj_game_over) || instance_exists(obj_template_complete))
    {
        // Exit event, stopping any enemies from spawning.
        return;
    }

    // Declare a temp variable to hold the enemy type.
    var _enemy = obj_slime;

    // Determine the position to spawn the enemy.
    var _dir = random(360);
    var _x = obj_hero.x + lengthdir_x(1500, _dir);
    var _y = obj_hero.y + lengthdir_y(1500, _dir);

    // Create an enemy at that generated position.
    instance_create_layer(_x, _y, "Instances", _enemy);
    
    // Mark that the enemy has been spawned.
    global.enemy_spawned = true;
}