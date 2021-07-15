/// @description move


if(get_dt_sum() >= 1){
	repeat(2){
		var _inst = particle_create(o_pollup_particle, position.x, position.y, global.pe_player_add);
	}
}

if(in_get_held(KEYBIND.SHOOT)){
	decelerate(2);
	hp -= get_dt()/60;
}else{
	accelerate(2, point_direction(position.x, position.y, o_controller_master.player.position.x, o_controller_master.player.position.y));
}

if(velocity.get_magnitude() > max_speed){
	//decelerate(.05 * velocity.get_magnitude());
	set_velocity(velocity.normalize().scale(max_speed));
}

move_sound.update_pitch(velocity.get_magnitude()/5)