/// @description draw sword and sword trail


var _in = 1;
var _out = 65;
var x1 = xp + lengthdir_x(_in, ang_p);
var y1 = yp + lengthdir_y(_in, ang_p);
var x2 = xp + lengthdir_x(_out, ang_p);
var y2 = yp + lengthdir_y(_out, ang_p);
var x3 = x + lengthdir_x(_out, angle_facing);
var y3 = y + lengthdir_y(_out, angle_facing);
var x4 = x + lengthdir_x(_in, angle_facing);
var y4 = y + lengthdir_y(_in, angle_facing);

var _tex = sprite_get_texture(spr_sword_trail, 0);
draw_primitive_begin_texture(pr_trianglestrip, _tex);

draw_vertex_texture_colour(x2, y2, 1, 0, c_white, .5);
draw_vertex_texture_colour(x1, y1, 0, 0, c_white, .5);
draw_vertex_texture_colour(x3, y3, 1, 1, c_white, 1);
draw_vertex_texture_colour(x4, y4, 0, 1, c_white, 1);

draw_primitive_end();

draw_sprite_ext(spr_player_sword, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);