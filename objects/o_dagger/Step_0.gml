/// @description life and stuffs

var _cd = o_controller_dagger;
for(var _i = 0; _i < ds_list_size(_cd.dagger_modifiers); _i++){
	var _m = _cd.dagger_modifiers[|_i];
	_m.process(self);
}

velocity.set_magnitude(dagger_speed);
velocity.set_angle(dagger_direction);
image_angle = velocity.get_angle() - 45;
image_xscale = dagger_size;
image_yscale = dagger_size;
hp -= get_dt();
