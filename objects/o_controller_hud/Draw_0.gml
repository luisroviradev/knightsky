/// @description Insert description here
// You can write your code in this editor

if(instance_exists(p)){
	//var _x = 32;
	//var _y = room_height - 32;
	//var _xs = wave(.75, 1, .9, 0) * .75;
	//var _ys = wave(.75, 1, 1, 0) * .75;
	//var _rot = wave(-15, 15, 4, 0);

	//var _h = (p.hp/p.hp_max)

	//draw_sprite_ext(spr_health, 0, _x, _y, _xs, _ys, _rot, c_white, 1);
	//draw_sprite_general(spr_health, 2, 0, _h*56, 41, 56 - (_h * 56), _x, _y + (_h*56), _xs, _ys, _rot, c_white, c_white, c_white, c_white, 1);
	//draw_sprite_ext(spr_health, 2, _x, _y, _xs * _h, _ys * _h, _rot, c_white, 1);
	
	var _x = room_width/2;
	var _y = room_height - 16;
	var _h = (p.hp/p.hp_max)
	
	draw_sprite_ext(spr_hp_bar, 0, _x, _y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_hp_bar, 1, _x, _y, _h, 1, 0, c_white, 1);
	
}
