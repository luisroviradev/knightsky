///@func vector_set_magnitude(v1, m)
///@arg v1
///@arg m
function vector_set_magnitude() {
	var _v1 = argument[0];
	var _m = argument[1];
	var _s = _m/vector_get_magnitude(_v1);
	return vector_scale(_v1, _s);


}
