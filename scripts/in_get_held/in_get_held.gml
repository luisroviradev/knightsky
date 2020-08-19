///@func in_get_held(key)
///@arg key
function in_get_held(_key) {
	return in_get_state(_key) == KEYSTATE.HELD;
}
