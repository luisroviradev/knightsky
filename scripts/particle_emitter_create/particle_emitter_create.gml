///@func particle_emitter_create(layer, blend_mode)
///@arg layer
///@arg blend_mode
function particle_emitter_create(_l, _bm) {
	var _emit = instance_create_layer(0, 0, _l, o_particle_emitter);
	_emit.blend_mode = _bm;
	return _emit;
}
