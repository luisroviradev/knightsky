
///@function wiggle
function wiggle() constructor{
	_dir_change = 0
	_offset = random(10);
	static process = function(_actor){
		_dir_change = wave(-5, 5, .5, _offset);
		var _magnitude = _actor.velocity.get_magnitude();
		var _direction = _actor.velocity.get_angle() + (_dir_change * get_dt());
		_actor.set_velocity_xy(lengthdir_x(_magnitude, _direction), lengthdir_y(_magnitude, _direction));
	}
	
}