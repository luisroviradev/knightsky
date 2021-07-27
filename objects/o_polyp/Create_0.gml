/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

image_xscale = .25;
image_yscale = .25;
max_speed = 20;
var _len = random(max_speed);
var _dir = random(360);
set_velocity_xy(lengthdir_x(_len, _dir), lengthdir_y(_len, _dir));

move_sound = SoundInstanceCreate(snd_polyp_move, audio_emitter, 1, true, 100);