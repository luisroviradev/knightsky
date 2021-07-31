/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

angle = point_direction(position.x, position.y, o_controller_master.player.position.x, o_controller_master.player.position.y);
turn_rate = .25;


var _s = .5;

image_xscale = _s;
image_yscale = _s;

acceleration_rate = .8;

max_speed = 12;

vroom_sound = SoundInstanceCreate(snd_wasp_move, audio_emitter, 0.1, true, 70);

init_pitch = random_range(.1, .3);