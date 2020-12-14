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
	impulse(dagger_recoil, image_angle - 180);
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
	var _s = audio_play_sound_on(audio_emitter, snd_vroom_sound, false, 100);
	audio_sound_pitch(_s, random_range(.80, 1.20));
}
//during acceleration
if(in_get_held(KEYBIND.ACCELERATE)){
	accelerate(acceleration, image_angle);
	if(check_dt_sum()){
		particle_create(o_player_thrust_particle, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), emit);
		particle_create(o_player_thrust_particle2, position.x + lengthdir_x(10, image_angle - 180), position.y + lengthdir_y(10, image_angle - 180), emit);
	}
}

//moving sound
if(in_get_pressed(KEYBIND.ACCELERATE)){
	nyoom_sound = audio_play_sound_on(audio_emitter, snd_nyoom_sound, true, 100);
}
if(in_get_held(KEYBIND.ACCELERATE)){
	audio_sound_pitch(nyoom_sound, velocity.get_magnitude()/8);
}
if(in_get_released(KEYBIND.ACCELERATE)){
	audio_stop_sound(nyoom_sound);
}

//deceleration
if(in_get_held(KEYBIND.DECELERATE)){
	decelerate(deceleration);
}
//limittting speed
if(velocity.get_magnitude() > max_speed){
	decelerate(.05 * velocity.get_magnitude());
}