/// @description Insert description here
// You can write your code in this editor

if(current_collider.collision_group & COLLISION_GROUP.ENEMY){
	SoundInstanceAt(snd_dagger_hit, random_range(.8, 1.2), 100, position.x, position.y);
	with(current_collider){
		sprite_flash(3);
	}
	current_collider.damage(dagger_damage);
	current_collider.impulse(velocity.get_magnitude()/4, velocity.get_angle());
	hp = 0;
}