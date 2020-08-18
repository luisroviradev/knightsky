function draw_layer_begin() {

	if(event_type == ev_draw and event_number == 0){
		var _w = o_controller_draw.dl_width;
		var _h = o_controller_draw.dl_height;
		if(!surface_exists(o_controller_draw.draw_layer_surfaces[? layer])){
			o_controller_draw.draw_layer_surfaces[? layer] = surface_create(_w, _h);
		}
		surface_set_target(o_controller_draw.draw_layer_surfaces[? layer]);
		draw_clear_alpha(c_black, 0);
	}


}
