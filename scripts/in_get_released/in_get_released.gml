///@func in_get_released(key)
///@arg key
function in_get_released(_key) {
	return in_get_state(_key) == KEYSTATE.RELEASED;
}