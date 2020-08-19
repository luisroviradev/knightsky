///@func in_get_state(key)
///@arg key
function in_get_state(_key) {
	var _key_arr = o_controller_input.bindings[_key];
	return _key_arr[2];
}