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

//other shoot
if(railgun_recharge <= 0){
	if(in_get_held(KEYBIND.RAILGUN) and railgun_charge < railgun_charge_max){
		railgun_charge = min(railgun_charge + get_dt(), railgun_charge_max);
		//play sound
		if(charge_sound != noone){
			charge_sound.update_pitch(.25 + ((railgun_charge/railgun_charge_max)*.75));
		}else{
			charge_sound = SoundInstanceCreate(snd_railgun_charge, audio_emitter, .25, true, 100);
		}
	}else if(railgun_charge < railgun_charge_max){
		railgun_charge = max(railgun_charge - get_dt(), 0);
	}
	if(railgun_charge >= railgun_charge_max){
		//particles
		if(get_dt_sum()){
			var _len = irandom(10);
			var _dir = irandom(360);
			var _x = position.x + lengthdir_x(_len, _dir);
			var _y = position.y + lengthdir_y(_len, _dir);
			var _p = particle_create(o_player_laser_particle, _x, _y, global.pe_player_add);
		}
	}
	if(in_get_released(KEYBIND.RAILGUN) and railgun_charge >= railgun_charge_max){
		railgun_charge = 0;
		railgun_recharge = railgun_recharge_time;
		impulse(railgun_recoil, image_angle - 180);
		sprite_flash(3);
		SoundInstanceCreate(snd_railgun, audio_emitter, random_range(.7, 1.3), false, 100);
		screen_shake(5, 12);
		var _x = position.x + lengthdir_x(10, image_angle);
		var _y = position.y + lengthdir_y(10, image_angle);
		var _laser = instance_create_layer(_x, _y, LAYER_PLAYER, o_laser);
	}
}else{
	railgun_recharge = max(railgun_recharge - get_dt(), 0);
}
if(in_get_none(KEYBIND.RAILGUN)){
	if(charge_sound != noone){
		charge_sound.stop_sound();
		delete charge_sound;
		charge_sound = noone;
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
//limitting speed
if(velocity.get_magnitude() > max_speed){
	decelerate(.05 * velocity.get_magnitude());
}

if(hit_sound){
	if(!hit_sound.is_playing()){
		delete hit_sound;
		hit_sound = noone;
	}
}

//dying effects
if(get_dt_sum() and random(1) < (1 - (hp/hp_max))){
	var _len = irandom(10);
	var _dir = irandom(360);
	var _x = position.x + lengthdir_x(_len, _dir);
	var _y = position.y + lengthdir_y(_len, _dir);
	var _p = particle_create(o_player_dying_particle, _x, _y, global.pe_player_add);
}

//dying
if(hp <= 0){
	o_controller_master.player = instance_create_layer(position.x, position.y, LAYER_PLAYER, o_dead_player);
	scr_explosion(position.x, position.y);
	instance_destroy(sword);
	instance_destroy();
}