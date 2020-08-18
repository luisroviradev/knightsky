///@func particle_create(particle_object, x, y, emitter)
///@arg particle_object
///@arg x
///@arg y
///@arg emitter
function particle_create() {
	var _p = argument[0];
	var _x = argument[1];
	var _y = argument[2];
	var _e = argument[3];
	if(instance_exists(_e)){
		var _l = _e.layer;
		var _inst = instance_create_layer(_x, _y, _l, _p);
		ds_list_add(_e.particles, _inst);

		return _inst;
	}

	var _p_type = object_get_name(_p);
	var _calling_actor = object_get_name(self);
	show_error("Tried to create a particle, " + _p_type + ", from an " + _calling_actor + " on a nonexistent particle emitter.", true);


}
