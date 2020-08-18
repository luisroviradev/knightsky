///@func slow_time(modifier, steps)
///@arg modifier
///@arg steps
function slow_time() {
	var _mod = argument[0];
	var _steps = argument[1];
	with(o_controller_delta){
		dt_mod *= _mod;
		dt_mod_set = dt_mod;
		dt_mod_timer += _steps
		dt_mod_timer = max(dt_mod_timer, 300);
		dt_mod_timer_set = dt_mod_timer;
	}


}
