///@func actor_impulse(actor, impulse, direction)
///@arg actor
///@arg impulse
///@arg direction
function actor_impulse() {
	var _i = argument[0];
	var _a = argument[1];
	var _d = argument[2];
	var _v = vector_create(lengthdir_x(_a, _d), lengthdir_y(_a, _d));
	_i.velocity = vector_add(_i.velocity, _v);


}
