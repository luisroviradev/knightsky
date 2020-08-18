///@func actor_accelerate(actor, acceleration, direction)
///@arg actor
///@arg acceleration
///@arg direction
function actor_accelerate() {
	var _i = argument[0];
	var _a = argument[1] * get_dt();
	var _d = argument[2];
	var _v = vector_create(lengthdir_x(_a, _d), lengthdir_y(_a, _d));
	_i.velocity = vector_add(_i.velocity, _v);


}
