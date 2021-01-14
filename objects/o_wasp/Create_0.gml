/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

angle = random(360);
turn_rate = .25;


var _s = random_range(.5, .75);

image_xscale = _s;
image_yscale = _s;

acceleration_rate = .75;

max_speed = 6;

vroom_sound = SoundInstanceCreate(snd_wasp_move, audio_emitter, 1, true, 70);

init_pitch = random_range(.1, .3);