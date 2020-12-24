/// @description Make a laser

// Inherit the parent event
event_inherited();

length = 600;

image_angle = o_player.image_angle;
image_xscale = length;
image_yscale = 2;


repeat(random_range(10, 20)){
	//var _x = x + lengthdir_x(random(length), image_angle) + lengthdir_x(random_range(-10, 10), image_angle - 90);
	//var _y = y + lengthdir_y(random(length), image_angle) + lengthdir_y(random_range(-10, 10), image_angle - 90);
	var _p = particle_create(o_player_laser_particle, x, y, global.pe_player_add);
}