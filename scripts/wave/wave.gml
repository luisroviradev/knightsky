///@func wave
///@arg min
///@arg max
///@arg seconds
///@arg offset
function wave(_min, _max, _seconds, _offset){
	var _range = _max - _min;
	return (sin(((o_controller_delta.in_game_time + _offset) * 2 * pi)/_seconds)/2 + .5) * _range + _min;
}