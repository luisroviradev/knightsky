///@func vector_rotate(v1, r)
///@arg v1
///@arg r
function vector_rotate() {
	var _v1 = argument[0];
	var _r = argument[1];
	return vector_set_angle(_v1, vector_get_angle(_v1) + _r);


}
