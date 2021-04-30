/// @description Make a laser

// Inherit the parent event
event_inherited();

length = 600;

image_angle = o_player.image_angle;
image_xscale = length;
image_yscale = 2;

laser_damage = 10;

repeat(random_range(40, 80)){
	var _l = random(length);
	var _ll = random_range(-10, 10);
	var _x = position.x + lengthdir_x(_l, image_angle) + lengthdir_x(_ll, image_angle - 90);
	var _y = position.y + lengthdir_y(_l, image_angle) + lengthdir_y(_ll, image_angle - 90);
	var _p = particle_create(o_player_laser_particle, _x, _y, global.pe_player_add);
}