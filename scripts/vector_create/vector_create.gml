///@func vector_create(x, y)
///@arg x
///@arg y
function vector_create() {
	var _x = argument[0];
	var _y = argument[1];
	var _arr = array_create(2);
	_arr[0] = _x;
	_arr[1] = _y;
	return _arr;


}
