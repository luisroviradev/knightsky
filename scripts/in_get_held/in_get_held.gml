///@func in_get_held(key)
function in_get_held() {
	//@arg key
	return in_get_state(argument[0]) == KEYSTATE.HELD;


}
