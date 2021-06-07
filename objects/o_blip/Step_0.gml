/// @description Insert description here
// You can write your code in this editor


if(state == 0){
	var _target_x = o_player.position.x;
	var _target_y = o_player.position.y;
	var _target_direction = point_direction(position.x, position.y, _target_x, _target_y)

	if(point_distance(position.x, position.y, _target_x, _target_y) < 200){
		state = 1;
	}

	var _angle_difference = angle_difference(_target_direction, angle);

	angle += _angle_difference * turn_rate * get_dt();
	image_angle = angle - 45;

	if(abs(_angle_difference) < 15){
		accelerate(acceleration_rate, angle);
	}

	if(velocity.get_magnitude() > max_speed){
		velocity.scale(.95);
	}
}else{
	
	run_timer -= get_dt();
	if(run_timer <= 0){
		run_timer = run_timer_set;
		state = 0;
	}
	
	
	var _target_x = o_player.position.x;
	var _target_y = o_player.position.y;
	var _target_direction = point_direction(_target_x, _target_y, position.x, position.y)

	var _angle_difference = angle_difference(_target_direction, angle);

	angle += _angle_difference * turn_rate * get_dt();
	image_angle = angle - 45;

	if(abs(_angle_difference) < 15){
		accelerate(acceleration_rate, angle);
	}

	if(velocity.get_magnitude() > max_speed){
		velocity.scale(.95);
	}
}