/// @description Draw the button
draw_set_font(global.f_menu);
var _left = x - width/2;
var _top = y;

if(state <= 1){
	draw_sprite_ext(spr_rectangle, 0, _left, _top, (width * state_follower), height * state_follower, 0, global.colors[0, 2], 1);
}else{
	draw_sprite_ext(spr_rectangle, 0, _left, _top, width, height, 0, global.colors[0, 3], 1);
}

var _c2 = merge_colour(global.colors[0, 2], global.colors[3, 0], round(state_follower));

draw_text_colour(_left, _top+ 1, text, _c2, _c2, _c2, _c2, 1);

