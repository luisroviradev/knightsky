/// @description Insert description here
// You can write your code in this editor


SoundInstanceAt(snd_dagger_hit, random_range(.8, 1.2), 100, position.x, position.y);
with(current_collider){
	sprite_flash(3);
}
current_collider.damage(laser_damage);
current_collider.impulse(12, image_angle);
