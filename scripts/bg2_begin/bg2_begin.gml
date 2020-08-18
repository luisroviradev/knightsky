function bg2_begin() {

	gpu_set_blendmode(bm_add);
	shader_set(sh_background);

	var _time = o_controller_delta.in_game_time;
	var _v_pos = camera_get_position();
	var _x = -_v_pos[X];
	var _y = -_v_pos[Y];

	shader_set_uniform_f(o_controller_draw.neb_u_time, _time);
	shader_set_uniform_f(o_controller_draw.neb_u_pos, _x * .33, _y * .33);
	//115/255, 10/255, 70/255
	shader_set_uniform_f(o_controller_draw.neb_u_col, 115/255, 10/255, 70/255);
	shader_set_uniform_f(o_controller_draw.neb_u_scale, .01212);



}
