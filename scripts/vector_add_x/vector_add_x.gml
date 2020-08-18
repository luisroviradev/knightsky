///@func vector_add_x(v1, x)
///@arg v1
///@arg x
function vector_add_x() {
	var _v1 = argument[0];
	var _x = argument[1];
	_v1[X] += _x;
	return _v1;


}
