///@func vector_add_y(v1, y)
///@arg v1
///@arg y
function vector_add_y() {
	var _v1 = argument[0];
	var _y = argument[1];
	_v1[Y] += _y;
	return _v1;


}
