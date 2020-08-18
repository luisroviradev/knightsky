function bg1_begin() {

	gpu_set_blendmode(bm_add);
	shader_set(sh_background);

	var _time = o_controller_delta.in_game_time;
	var _v_pos = camera_get_position();
	var _x = -_v_pos.x;
	var _y = -_v_pos.y;
	delete _v_pos;

	shader_set_uniform_f(o_controller_draw.neb_u_time, _time);
	shader_set_uniform_f(o_controller_draw.neb_u_pos, _x * .66, _y * .66);
	shader_set_uniform_f(o_controller_draw.neb_u_col, 61/255, 5/255, 54/255);
	shader_set_uniform_f(o_controller_draw.neb_u_scale, .02);


}
