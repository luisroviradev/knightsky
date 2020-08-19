///@func in_get_none(key)
///@arg key
function in_get_none(_key) {
	return in_get_state(_key) == KEYSTATE.NONE;
}
