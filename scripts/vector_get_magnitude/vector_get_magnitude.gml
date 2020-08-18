///@func vector_get_magnitude(v1)
///@arg v1
function vector_get_magnitude() {
	var _v1 = argument[0];
	return point_distance(0, 0, _v1[X], _v1[Y]);


}
