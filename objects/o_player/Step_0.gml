/// @description do things

var _dt = get_dt();

//turn and stuff
var _target_angle = point_direction(x, y, mouse_x, mouse_y);
image_angle += angle_difference(_target_angle, image_angle) * _dt * turn_rate;
image_angle = wrap(image_angle, 0, 360);

//accelerate
if(in_get_pressed(KEYBIND.ACCELERATE)){
	impulse(impulse_force, image_angle);
}
if(in_get_held(KEYBIND.ACCELERATE)){
	accelerate(acceleration, image_angle);
	if(check_dt_sum()){
		particle_create(o_player_thrust_particle, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), emit);
		particle_create(o_player_thrust_particle2, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), emit);
	}
}
if(in_get_held(KEYBIND.DECELERATE)){
	decelerate(deceleration);
}
if(velocity.get_magnitude() > max_speed){
	decelerate(.05 * velocity.get_magnitude());
}