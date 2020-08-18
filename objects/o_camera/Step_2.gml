/// @description veocity

var _dt = get_dt();

target_position_1 = vector_create(o_player.x, o_player.y);
target_position_2 = vector_create(mouse_x, mouse_y);

var _target = vector_add(vector_add(target_position_1, vector_scale(vector_subtract(target_position_2, target_position_1), inter)), offset);

var _dist = vector_subtract(_target, velocity);
velocity = vector_scale(_dist, speed_val);

/*
var _m = point_distance(position[X], position[Y], _target[X], _target[Y]);
if(_m > distance_limit){
	var _len = _m - distance_limit;
	var _dir = point_direction(position[X], position[Y], _target[X], _target[Y]);
	position[X] += lengthdir_x(_len, _dir);
	position[Y] += lengthdir_y(_len, _dir);
}
*/

position[X] += velocity[X] * _dt;
position[Y] += velocity[Y] * _dt;

