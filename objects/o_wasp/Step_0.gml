/// @description AI

var _target_x = o_player.x;
var _target_y = o_player.y;

var _target_angle = point_direction(x, y, _target_x, _target_y);

var _angle_difference = angle_difference(_target_angle, angle);

angle += _angle_difference * turn_rate * get_dt();
image_angle = angle - 45;


if(abs(_angle_difference) < 15){
	accelerate(acceleration_rate, angle);
}

if(velocity.get_magnitude() > max_speed){
	velocity.scale(.95);
}

vroom_sound.update_pitch((velocity.get_magnitude()/max_speed)/8 + init_pitch);