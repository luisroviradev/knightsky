///@func vector_scale(v1, s)
///@arg v1
///@arg s
function vector_scale() {
	var _v1 = argument[0];
	var _s = argument[1];
	_v1[X] *= _s;
	_v1[Y] *= _s;
	return _v1;



}
