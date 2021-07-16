/// @description Insert description here
// You can write your code in this editor
hp = 0;
SoundInstanceAt(snd_pollup_get, random_range(.8, 1.2), 0, position.x, position.y);
if(instance_exists(o_player)){
	o_player.hp += .5
	o_player.hp = clamp(o_player.hp, 0, o_player.hp_max);
	with(o_player){
		sprite_flash(3);
	}
}