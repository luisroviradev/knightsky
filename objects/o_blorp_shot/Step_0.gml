/// @description Insert description here
// You can write your code in this editor

if(shoot_timer > 0){
	shoot_timer -= get_dt();
	image_xscale += .5 * get_dt() / 60;
	image_yscale += .5 * get_dt() / 60;
	if(instance_exists(target)){
		position.x = target.position.x + lengthdir_x(20, target.angle);
		position.y = target.position.y + lengthdir_y(20, target.angle);
	}else{
		hp = 0;
	}
	charge_sound.update_pitch((image_xscale * 2) + .1);
	velocity.x = 0;
	velocity.y = 0;
}else{
	if(!shot){
		charge_sound.stop_sound();
		shot = true;
		var _p = o_controller_master.player;
		var _dir = point_direction(position.x, position.y, _p.position.x, _p.position.y);
		impulse(20, _dir);
		SoundInstanceAt(snd_blorp_shoot, 1, 70, position.x, position.y);
	}
	repeat(get_dt_sum()){
		particle_create(o_blorp_shot_particle, position.x, position.y, global.pe_enemy_add);
	}
	hp -= get_dt() / 12;
}