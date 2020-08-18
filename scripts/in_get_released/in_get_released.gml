///@func in_get_released(key)
function in_get_released() {
	//@arg key
	return in_get_state(argument[0]) == KEYSTATE.RELEASED;


}
