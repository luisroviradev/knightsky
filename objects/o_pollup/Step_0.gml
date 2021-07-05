/// @description move


if(get_dt_sum() >= 1){
	repeat(2){
		var _inst = particle_create(o_pollup_particle, position.x, position.y, global.pe_player_add);
	}
}

accelerate(2, point_direction(position.x, position.y, o_controller_master.player.position.x, o_controller_master.player.position.y));

if(velocity.get_magnitude() > max_speed){
	//decelerate(.05 * velocity.get_magnitude());
	set_velocity(velocity.normalize().scale(max_speed));
}