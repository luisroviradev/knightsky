/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

angle = random(360);
turn_rate = .1;

var _s = 1;
image_xscale = _s;
image_yscale = _s;

acceleration_rate = .5;

max_speed = 6;

state = 0;

run_timer_set = 1 * 60;
run_timer = run_timer_set;