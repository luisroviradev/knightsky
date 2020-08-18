///@func vector_add(v1, v2)
///@arg v1
///@arg v2
function vector_add() {
	var _v1 = argument[0];
	var _v2 = argument[1];
	_v1[X] += _v2[X];
	_v1[Y] += _v2[Y];
	return _v1;


}
