// If the player does not exist
// (meaning it has been defeated)
var l4245D4AA_0 = false;
l4245D4AA_0 = instance_exists(obj_player);
if(!l4245D4AA_0)
{
	// Exit/stop the event.
	exit;
}

// Get the distance from this instance
// to the player.
var distance = point_distance(x, y, obj_player.x, obj_player.y);

// If the distance is less than a certain limit
if(distance < 300)
{
	// And the sound is paused,
	var l400D4FEC_0 = my_sound;
	if (audio_is_paused(l400D4FEC_0))
	{
		// Resume it
		audio_resume_sound(my_sound);
	}

	// The volume of the sound is changed
	// based on this distance to the player.
	audio_sound_gain(my_sound, min(100 / distance, 1), 0);
}

// Otherwise, if it's out of range
else
{
	// And the sound is still playing,
	var l391B9441_0 = my_sound;
	if (audio_is_playing(l391B9441_0))
	{
		// Pause it
		audio_pause_sound(my_sound);
	}
}