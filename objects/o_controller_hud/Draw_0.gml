/// @description Insert description here
// You can write your code in this editor

var _x = room_width - 64;
var _y = room_height - 64;
var _xs = wave(.75, 1, .9, 0) * .75;
var _ys = wave(.75, 1, 1, 0) * .75;
var _rot = wave(-15, 15, 4, 0);

var _charge = p.railgun_charge/p.railgun_charge_max;

draw_sprite_ext(spr_charge_indicator, (p.railgun_recharge > 0) ? round(wave(0, 1, .25, 0)) : 0, _x, _y, _xs, _ys, _rot, c_white, 1);
draw_sprite_ext(spr_charge_indicator, 2, _x, _y, _xs, _ys, _rot, c_white, _charge);