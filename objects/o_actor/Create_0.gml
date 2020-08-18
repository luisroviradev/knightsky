/// @description Initialize actor
#region initialize collision_group bits
if(array_length_1d(collision_group) == 0){
	collision_group = 0;
}else{
	var _cg_temp = 0;
	for(var _ind = 0; _ind < array_length_1d(collision_group); _ind++){
		_cg_temp = _cg_temp | collision_group[_ind];
	}
	collision_group = _cg_temp;
}
#endregion

#region initialize collides_with bits
if(array_length_1d(collides_with) == 0){
	collides_with = 0;
}else{
	var _cw_temp = 0;
	for(var _ind = 0; _ind < array_length_1d(collides_with); _ind++){
		_cw_temp = _cw_temp | collides_with[_ind];
	}
	collides_with = _cw_temp;
}
#endregion

#region position and velocity
velocity = vector_create(0, 0);
//set position array and actual position in room
var _v_pos = camera_get_position();
position = vector_create(x, y);
x = position[X] - _v_pos[X];
y = position[Y] - _v_pos[Y];
#endregion

#region create collision list
collision_list = noone;
if(collides_with > 0){
	collision_list = ds_list_create();
}
#endregion

#region create audio emitter
audio_emitter = noone;
if(has_audio){
	audio_emitter = audio_emitter_create();
}
#endregion
