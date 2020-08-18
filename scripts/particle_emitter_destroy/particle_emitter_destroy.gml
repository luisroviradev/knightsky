///@func particle_emitter_destroy(emitter_id, destroy_particles?)
///@arg emitter_id
///@arg destroy_particles?
function particle_emitter_destroy() {
	var _id = argument[0];
	var _d = argument[1];
	_id.destroy = true;
	_id.destroy_particles = _d;


}
