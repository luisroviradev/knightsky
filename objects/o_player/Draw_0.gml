/// @description draw stuff

draw_self();
draw_sprite_ext(spr_player, 2, x, y, image_xscale, image_yscale, image_angle, c_white, (railgun_recharge > 0) ? round(wave(0, 1, .25, 0)) : 0)
draw_sprite_ext(spr_player, 1, x, y, image_xscale, image_yscale, image_angle, c_white, railgun_charge/railgun_charge_max)

//draw_text(x + 60, y, fps_real);