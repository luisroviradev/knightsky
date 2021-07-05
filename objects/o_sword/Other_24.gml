/// @description Enemy collisions

var _damage = ((abs(angle_diff)) + (player.velocity.get_magnitude() * (abs(angle_diff) * .1))) * .1;
if(current_collider.collision_group & COLLISION_GROUP.ENEMY){
	if(_damage > 1){
		if(hit_sound0)
			hit_sound0.stop_sound();
		if(hit_sound1)
			hit_sound1.stop_sound();
		delete hit_sound0
		delete hit_sound1
		hit_sound0 = SoundInstanceCreate(snd_sword_hit, audio_emitter, random_range(.8, 1.2), false, 100);
		hit_sound1 = SoundInstanceCreate(snd_dagger_hit, audio_emitter, random_range(.8, 1.2), false, 100);
		sprite_flash(3);
		with(current_collider){
			sprite_flash(3);
		}
	}
	current_collider.damage(_damage * get_dt());
	var _dir = angle_facing + (sign(angle_diff) * 90);
	current_collider.accelerate(abs(angle_diff) * .4, _dir);
	if(current_collider.hp <= 0){
		repeat(3){
			var _inst = instance_create_layer(current_collider.position.x, current_collider.position.y, LAYER_PLAYER, o_pollup);
		}
	}
}