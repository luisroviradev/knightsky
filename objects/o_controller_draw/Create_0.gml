/// @description Insert description here
// You can write your code in this editor

#region color and font stuff
global.colors = []
var _s = surface_create(4, 4);
surface_set_target(_s)
draw_sprite(spr_color_palette, 0, 0, 0);

for(var _x = 0; _x < 4; _x++){
	for(var _y = 0; _y < 4; _y++){
		global.colors[_x, _y] = surface_getpixel(_s, _x, _y);
	}
}

surface_reset_target()
#endregion
global.f_menu = font_add_sprite_ext(spr_font_main, "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789", false, 0);

