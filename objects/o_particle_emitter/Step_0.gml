/// @description handle destruction

//show_debug_message(ds_list_size(particles));
if(destroy){
	if(destroy_particles){
		var _size = ds_list_size(particles);
		for(var _i = _size - 1; _i >= 0; _i--){
			var _p = particles[| _i];
			if(instance_exists(_p)){
				instance_destroy(_p);
			}
		}
		//show_debug_message(string(instance_number(o_particle)) + " particles left.");
		instance_destroy();
	}else{
		if(ds_list_empty(particles)){
			//show_debug_message(string(instance_number(o_particle)) + " particles left.");
			instance_destroy();
		}
	}
}