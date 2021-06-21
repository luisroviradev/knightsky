/// @description life and stuffs

for(var _i = 0; _i < ds_list_size(modifiers); _i++){
	modifiers[|_i].process(self);
}

hp -= get_dt();
image_angle = velocity.get_angle() - 45;