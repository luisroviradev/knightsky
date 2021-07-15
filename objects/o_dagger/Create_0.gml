/// @description Initialize dagger

// Inherit the parent event
event_inherited();

var _s = random_range(20, 30);
var _r = 4;
var _d = o_controller_master.player.image_angle + random_range(-_r, _r);
set_velocity_xy(lengthdir_x(_s, _d), lengthdir_y(_s, _d));

image_angle = _d - 45;
var _scale = random_range(.2, .4);
image_xscale = _scale;
image_yscale = _scale;

sprite_flash(3);

dagger_damage = 1;