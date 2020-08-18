///@func vector_normal(v1)
///@arg v1
function vector_normal() {
	var _v1 = argument[0];
	var _m = vector_get_magnitude(_v1)
	_v1[X] /= _m;
	_v1[Y] /= _m;
	return _v1;


}
