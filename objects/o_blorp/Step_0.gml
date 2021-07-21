/// @description AI

var _target_x = o_controller_master.player.position.x;
var _target_y = o_controller_master.player.position.y;

var _target_angle = point_direction(position.x, position.y, _target_x, _target_y);

var _angle_difference = angle_difference(_target_angle, angle);

angle += _angle_difference * turn_rate * get_dt();
image_angle = angle - 45;


if(point_distance(_target_x, _target_y, position.x, position.y) > orbit_dist){
	if(abs(_angle_difference) < 15){
		accelerate(acceleration_rate, angle);
	}
}else{
	accelerate(acceleration_rate, angle - 180);
}

if(get_dt_sum()){
	particle_create(o_blorp_particle, position.x + velocity.x, position.y + velocity.y, global.pe_fxbottom_normal);
}

if(velocity.get_magnitude() > max_speed){
	velocity.scale(.95);
}

vroom_sound.update_pitch((velocity.get_magnitude()/max_speed)/8 + init_pitch);