/// @description Initialize dagger

// Inherit the parent event
event_inherited();

var _cd = o_controller_dagger;

dagger_speed = random_range(_cd.dagger_speed, _cd.dagger_speed + 10);
var _r = _cd.dagger_accuracy;
dagger_direction = o_player.image_angle + random_range(-_r, _r) + _cd.dagger_direction;
set_velocity_xy(lengthdir_x(dagger_speed, dagger_direction), lengthdir_y(dagger_speed, dagger_direction));

image_angle = velocity.get_angle() - 45;
dagger_size = random_range(_cd.dagger_size, _cd.dagger_size + .2);
image_xscale = dagger_size;
image_yscale = dagger_size;

sprite_flash(3);

hp_max = _cd.dagger_life
hp = hp_max

dagger_damage = _cd.dagger_damage;
for(var _i = 0; _i < ds_list_size(_cd.dagger_modifiers); _i++){
	var _m = _cd.dagger_modifiers[|_i];
	_m.dagger_init(self);
}