///@func vector_set_angle(v1, a)
///@arg v1
///@arg a
function vector_set_angle() {
	var _v1 = argument[0];
	var _a = argument[1];
	var _m = vector_get_magnitude(_v1);
	return vector_create(lengthdir_x(_m, _a), lengthdir_y(_m, _a));


}
