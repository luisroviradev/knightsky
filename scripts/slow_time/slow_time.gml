///@func slow_time(modifier, steps)
///@arg modifier
///@arg steps
function slow_time(_mod, _steps) {
	with(o_controller_delta){
		dt_mod *= _mod;
		dt_mod = clamp(dt_mod, .1, 1);
		dt_mod_set = dt_mod;
		dt_mod_timer += _steps
		dt_mod_timer = min(dt_mod_timer, 300);
		dt_mod_timer_set = dt_mod_timer;
	}
}
