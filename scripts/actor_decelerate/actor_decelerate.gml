///@func actor_decelerate(actor, deceleration)
///@arg actor
///@arg deceleration
function actor_decelerate() {
	var _i = argument[0];
	var _d = argument[1] * get_dt();
	var _m = max(vector_get_magnitude(_i.velocity) - _d, 0);
	_i.velocity = vector_set_magnitude(_i.velocity, _m);


}
