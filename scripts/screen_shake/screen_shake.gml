///@func screen_shake
///@arg steps
///@arg amount
function screen_shake(_steps, _amount){
	var _inst = instance_create_layer(0, 0, LAYER_HUD, o_screen_shake);
	_inst.amount = _amount;
	_inst.steps = _steps;
	return _inst;
}