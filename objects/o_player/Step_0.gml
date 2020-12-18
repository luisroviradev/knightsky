/// @description do things

var _dt = get_dt();

//turn and stuff
var _target_angle = point_direction(x, y, mouse_x, mouse_y);
image_angle += angle_difference(_target_angle, image_angle) * _dt * turn_rate;
image_angle = wrap(image_angle, 0, 360);

//shoot
dagger_timer -= min(_dt, dagger_timer);
if(in_get_held(KEYBIND.SHOOT) and dagger_timer <= 0){
	dagger_timer += dagger_timer_time;
	var _x = position.x + lengthdir_x(10, image_angle);
	var _y = position.y + lengthdir_y(10, image_angle);
	screen_shake(3, 7);
	impulse(dagger_recoil, image_angle - 180);
	SoundInstanceCreate(snd_shoot, audio_emitter, random_range(.7, 1.3), false, 100);
	sprite_flash(3);
	
	//muzzle flash particles
	var _p1 = particle_create(o_muzzle_flash_particle, _x, _y, global.pe_player_normal);
	_p1.rotation = image_angle;
	_p1.image_angle = image_angle;
	var _p2 = particle_create(o_muzzle_flash_particle, _x, _y, global.pe_player_normal);
	_p2.rotation = image_angle - 90;
	_p2.image_angle = image_angle - 90;
	
	//create daggers
	repeat(3){
		var _inst = instance_create_layer(_x, _y, LAYER_PLAYER, o_dagger);
	}
}

//accelerate
//start of the acceleration
if(in_get_pressed(KEYBIND.ACCELERATE)){
	impulse(impulse_force, image_angle);
	flash(position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), 40);
	screen_shake(5, 15);
	SoundInstanceCreate(snd_vroom_sound, audio_emitter, random_range(.8, 1.2), false, 100);
}
//during acceleration
if(in_get_held(KEYBIND.ACCELERATE)){
	accelerate(acceleration, image_angle);
	if(check_dt_sum()){
		particle_create(o_player_thrust_particle, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), global.pe_player_add);
		particle_create(o_player_thrust_particle2, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), global.pe_player_add);
	}
	
}

//moving sound
if(in_get_pressed(KEYBIND.ACCELERATE)){
	nyoom_sound = SoundInstanceCreate(snd_nyoom_sound, audio_emitter, 1, true, 100);
}
if(in_get_held(KEYBIND.ACCELERATE)){
	nyoom_sound.update_pitch(velocity.get_magnitude()/8);
}
if(in_get_released(KEYBIND.ACCELERATE)){
	nyoom_sound.stop_sound();
}

//deceleration
if(in_get_held(KEYBIND.DECELERATE)){
	decelerate(deceleration);
}
//limittting speed
if(velocity.get_magnitude() > max_speed){
	decelerate(.05 * velocity.get_magnitude());
}