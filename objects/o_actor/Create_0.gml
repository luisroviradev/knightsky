/// @description Initialize actor
#region initialize collision_group bits
if(array_length(collision_group) == 0){
	collision_group = 0;
}else{
	var _cg_temp = 0;
	for(var _ind = 0; _ind < array_length(collision_group); _ind++){
		_cg_temp = _cg_temp | collision_group[_ind];
	}
	collision_group = _cg_temp;
}
#endregion

#region initialize collides_with bits
if(array_length(collides_with) == 0){
	collides_with = 0;
}else{
	var _cw_temp = 0;
	for(var _ind = 0; _ind < array_length(collides_with); _ind++){
		_cw_temp = _cw_temp | collides_with[_ind];
	}
	collides_with = _cw_temp;
}
#endregion

#region position and velocity
velocity = Vec2Create(0, 0);
//set position array and actual position in room
var _v_pos = camera_get_position();
position = Vec2Create(x, y);
x = position.x - _v_pos.x;
y = position.y - _v_pos.y;
delete _v_pos;
#endregion

#region create collision list
collision_list = noone;
if(collides_with > 0){
	collision_list = ds_list_create();
}
current_collider = noone;
#endregion

#region create audio emitter
audio_emitter = noone;
if(has_audio){
	audio_emitter = audio_emitter_create();
	audio_emitter_falloff(audio_emitter, 100, 300, 1);
	audio_emitter_position(audio_emitter, x, y, 0);
}
#endregion

#region methods

///@func accelerate
///@arg acceleration
///@arg direction
function accelerate(_a, _d){
	_a *= get_dt();
	velocity.x += lengthdir_x(_a, _d);
	velocity.y += lengthdir_y(_a, _d);
}

///@func accelerate_v
///@arg acceleration_vector
function accelerate_v(_a){
	var _b = _a.copy().scale(get_dt());
	velocity.add(_b);
	delete _b;
}

///@func decelerate
///@arg deceleration
function decelerate(_d){
	_d *= get_dt();
	velocity.set_magnitude(max(velocity.get_magnitude() - _d, 0));
}

///@func impulse
///@arg impulse 
///@arg direction
function impulse(_a, _d){
	velocity.x += lengthdir_x(_a, _d);
	velocity.y += lengthdir_y(_a, _d);
}

///@func set_velocity
///@arg velocity_vector
function set_velocity(_v){
	velocity.set_from_vec(_v);
}

///@func set_velocity_xy
///@arg x
///@arg y
function set_velocity_xy(_x, _y){
	velocity.set(_x, _y);
}

///@func set_position
///@arg x
///@arg y
function set_position(_x, _y){
	var _v_pos = camera_get_position();
	position.set(_x, _y);
	x = position.x - _v_pos.x;
	y = position.y - _v_pos.y;
	delete _v_pos;
}

///@func damage
///@arg damage
function damage(_damage){
	hp = max(0, hp - _damage);
	return hp;
}

#endregion