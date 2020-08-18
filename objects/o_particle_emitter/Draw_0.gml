/// @description draw particles and stuff

gpu_set_blendmode(blend_mode);

var _size = ds_list_size(particles);
for(var _i = _size-1; _i >= 0; _i--){
	var _inst = particles[| _i];
	if(instance_exists(_inst)){
		//draw the particle
		with(_inst){
			draw_self();
		}
	}else{
		//remove its instance id from the list if it does not exist
		ds_list_delete(particles, _i);
	}
}

gpu_set_blendmode(bm_normal);