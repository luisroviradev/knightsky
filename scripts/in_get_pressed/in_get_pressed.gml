///@func in_get_pressed(key)
function in_get_pressed() {
	//@arg key
	return in_get_state(argument[0]) == KEYSTATE.PRESSED;


}
