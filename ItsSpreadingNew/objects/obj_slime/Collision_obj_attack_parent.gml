// If Alarm 0 is deactivated
if(alarm[0] < 0)
{

	move_speed = 0;
	
	//this doesn't work idk why
	image_index = spr_slime_defeat

	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	audio_play_sound(snd_slime_defeated, 0, 0, 1.0, undefined, 1.0);

	// Tell the Alarm 0 event to run after 20 frames
	alarm_set(0, 20);
}