/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

shoot_timer = 60;
image_xscale = 0;
image_yscale = 0;
shot = false;
target = noone;

charge_sound = SoundInstanceCreate(snd_blorp_charge, audio_emitter, .1, true, 70);