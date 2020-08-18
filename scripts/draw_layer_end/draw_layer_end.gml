function draw_layer_end() {

	if(event_type == ev_draw and event_number == 0){
	
		surface_reset_target();
	
		shader_set(sh_outline);
		shader_set_uniform_f(o_controller_draw.out_u_dim, o_controller_draw.dl_width, o_controller_draw.dl_height);
		shader_set_uniform_f(o_controller_draw.out_u_col, 99, 0, 64);
		draw_surface(o_controller_draw.draw_layer_surfaces[? layer], 0, 0);
		shader_reset();
	
	
	}


}
