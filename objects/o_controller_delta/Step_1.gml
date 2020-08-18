/// @description handle delta timing

dt_real = (delta_time * 60/1000000);

if(dt_mod_timer > 0){
	dt_mod_timer -= min(dt_real, dt_mod_timer);
	dt_mod = ease(dt_mod_set, 1, 1 - (dt_mod_timer / dt_mod_timer_set), 3);
}

dt = dt_real * dt_mod;

while(dt_sum >= 1) dt_sum--;
dt_sum += dt;

in_game_time += dt/60;