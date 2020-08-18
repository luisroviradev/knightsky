///@func vector_get_angle(v1)
///@arg v1
function vector_get_angle() {
	var _v1 = argument[0];
	return point_direction(0, 0, _v1[X], _v1[Y]);


}
