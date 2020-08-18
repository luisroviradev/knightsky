///@func actor_accelerate_v(actor, acceleration_vector)
///@arg actor
///@arg acceleration_vector
function actor_accelerate_v() {
	var _i = argument[0];
	var _a = vector_scale(argument[1], get_dt());
	_i.velocity = vector_add(_i.velocity, _a);


}
