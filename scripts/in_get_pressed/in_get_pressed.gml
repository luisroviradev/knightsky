///@func in_get_pressed(key)
///@arg key
function in_get_pressed(_key) {
	return in_get_state(_key) == KEYSTATE.PRESSED;
}
