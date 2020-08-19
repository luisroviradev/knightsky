///@func wrap
///@arg value
///@arg min
///@arg max
function wrap(_value, _min, _max){
	var _range = _max - _min;
	while(_value >= _max){
		_value -= _range;
	}
	while(_value < _min){
		_value += _range;
	}
	return _value;
}