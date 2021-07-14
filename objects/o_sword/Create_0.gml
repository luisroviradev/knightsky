/// @description Initialize sword

// Inherit the parent event
event_inherited();

player = noone

follow_dist = 20;
follow_speed = .5;
turn_rate = .35;
angle_facing = 0;
angle_target = 0;
angle_diff = 0;
xp = x;
yp = y;
ang_p = angle_facing;
explode_at_x = 0;
explode_at_y = 0;

image_xscale = .3;
image_yscale = .3;

//sound
swish_sound = SoundInstanceCreate(snd_swish_sound, audio_emitter, .1, true, 100);