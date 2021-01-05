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
//emit = particle_emitter_create(LAYER_PLAYER, bm_add);

//sword
sword = instance_create_layer(position.x, position.y, LAYER_PLAYER, o_sword);

//daggers
dagger_timer_time = 7;
dagger_timer = 0;
dagger_recoil = 5;

//railgun
railgun_charge = 0;
railgun_charge_max = 30;
railgun_recoil = 24;
railgun_recharge = 0;
railgun_recharge_time = 60;

//sounds
//vroom_sound = noone;
nyoom_sound = noone;

