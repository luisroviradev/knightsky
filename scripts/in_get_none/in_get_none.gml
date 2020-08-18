///@func in_get_none(key)
function in_get_none() {
	//@arg key
	return in_get_state(argument[0]) == KEYSTATE.NONE;


}
