/// @description velocity



var _dt = get_dt();

var _target_position_1 = Vec2Create(o_player.x, o_player.y);
var _target_position_2 = Vec2Create(mouse_x, mouse_y);

var _target = offset.copy().add(_target_position_2.subtract(_target_position_1).scale(inter).add(_target_position_1));

//show_debug_message(_target.to_string());

var _dist = _target.copy().subtract(velocity);
velocity.set_from_vec(_dist.scale(speed_val));
delete _dist;

/*
var _m = point_distance(position[X], position[Y], _target[X], _target[Y]);
if(_m > distance_limit){
	var _len = _m - distance_limit;
	var _dir = point_direction(position[X], position[Y], _target[X], _target[Y]);
	position[X] += lengthdir_x(_len, _dir);
	position[Y] += lengthdir_y(_len, _dir);
}
*/

position.x += velocity.x * _dt;
position.y += velocity.y * _dt;
//show_debug_message(position.to_string());

