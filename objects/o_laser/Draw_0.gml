/// @description laser fx

var _s = (hp/10)
var _x = x + lengthdir_x(length, image_angle);
var _y = y + lengthdir_y(length, image_angle);

draw_sprite_ext(spr_flash, 0, x, y, .05 * _s, .05 * _s, image_angle, make_colour_rgb(28, 245, 167), 1);
draw_sprite_ext(spr_flash, 0, _x, _y, .05 * _s, .05 * _s, image_angle, make_colour_rgb(28, 245, 167), 1);

draw_self();

draw_sprite_ext(spr_flash, 0, x, y, .03 * _s, .03 * _s, image_angle, c_white, 1);
draw_sprite_ext(spr_flash, 0, _x, _y, .03 * _s, .03 * _s, image_angle, c_white, 1);