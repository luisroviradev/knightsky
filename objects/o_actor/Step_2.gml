/// @description Update actor

var _dt = get_dt();

var _v_pos = camera_get_position();

//update position and collision list
if(collides_with > 0){
	#region complex movement code for actors that have collisions
	ds_list_clear(collision_list); //empty collision list
	var _temp_vel = vector_scale(velocity, _dt);
	var _normal = vector_normal(_temp_vel);
	var _m = vector_get_magnitude(_temp_vel);
	var _remainder = vector_scale(_normal, _m - floor(_m));
	for(var _d = 0; _d <= floor(_m); _d++){
		//incremental movement
		if(_d == floor(_m)){
			position[X] += _remainder[X];
			position[Y] += _remainder[Y];
		}else{
			position[X] += _normal[X];
			position[Y] += _normal[Y];
		}
		#region collisions
		var _l = ds_list_create();
		var _s = instance_place_list(position[X] + _v_pos[X], position[Y] + _v_pos[Y], o_actor, _l, true);
		for(var _i = 0; _i < _s; _i++){
			//if the instance is not in the collision list already
			var _inst = _l[| _i];
			if(ds_list_find_index(collision_list, _inst) == -1){
				//add it
				ds_list_add(collision_list, _inst);
			}
		}
		ds_list_destroy(_l);
		#endregion
	}
	#endregion
}else{
	//simple movement code
	var _temp_vel = vector_scale(velocity, _dt);
	position[X] += _temp_vel[X];
	position[Y] += _temp_vel[Y];
}

x = position[X] - _v_pos[X];
y = position[Y] - _v_pos[Y];

//audio emitter code
if(has_audio){
	audio_emitter_position(audio_emitter, x, y, 0);
}

//hp and destruction
if(can_die and hp <= 0){
	instance_destroy();
}