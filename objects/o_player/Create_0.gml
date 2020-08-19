/// @description Initialize player

// Inherit the parent event
event_inherited();

image_xscale = .5;
image_yscale = .5;

max_speed = 6;
impulse_force = 15;
acceleration = .6;
deceleration = .15;
turn_rate = .25;

//particle emitter
emit = particle_emitter_create(LAYER_PLAYER, bm_add);