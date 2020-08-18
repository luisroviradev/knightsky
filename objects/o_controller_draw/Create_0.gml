/// @description Insert description here
// You can write your code in this editor


#region background layers

//nebula shader uniforms
neb_u_time = shader_get_uniform(sh_background, "u_time");
neb_u_pos = shader_get_uniform(sh_background, "u_pos");
neb_u_col = shader_get_uniform(sh_background, "u_color");
neb_u_scale = shader_get_uniform(sh_background, "u_scale");

layer_script_begin(LAYER_BG1, bg1_begin);
layer_script_end(LAYER_BG1, bg_end);
layer_background_sprite(layer_background_get_id(layer_get_id(LAYER_BG1)), spr_background_canvas);

layer_script_begin(LAYER_BG2, bg2_begin);
layer_script_end(LAYER_BG2, bg_end);
layer_background_sprite(layer_background_get_id(layer_get_id(LAYER_BG2)), spr_background_canvas);

layer_script_begin(LAYER_BG3, bg3_begin);
layer_script_end(LAYER_BG3, bg_end);
layer_background_sprite(layer_background_get_id(layer_get_id(LAYER_BG3)), spr_background_canvas);

#endregion

#region instance draw layers

//outline shader uniforms
out_u_dim = shader_get_uniform(sh_outline, "dimensions");
out_u_col = shader_get_uniform(sh_outline, "colour");
dl_width = room_width;
dl_height = room_height;


layer_fxbottom_id = layer_get_id(LAYER_FXBOTTOM);
layer_enemy_id = layer_get_id(LAYER_ENEMY);
layer_fxmid_id = layer_get_id(LAYER_FXMID);
layer_player_id = layer_get_id(LAYER_PLAYER);
layer_fxtop_id = layer_get_id(LAYER_FXTOP);


draw_layer_surfaces = ds_map_create();
ds_map_add(draw_layer_surfaces, layer_fxbottom_id, surface_create(dl_width, dl_height));
ds_map_add(draw_layer_surfaces, layer_enemy_id, surface_create(dl_width, dl_height));
ds_map_add(draw_layer_surfaces, layer_fxmid_id, surface_create(dl_width, dl_height));
ds_map_add(draw_layer_surfaces, layer_player_id, surface_create(dl_width, dl_height));
ds_map_add(draw_layer_surfaces, layer_fxtop_id, surface_create(dl_width, dl_height));

layer_script_begin(layer_fxbottom_id, draw_layer_begin);
layer_script_begin(layer_enemy_id, draw_layer_begin);
layer_script_begin(layer_fxmid_id, draw_layer_begin);
layer_script_begin(layer_player_id, draw_layer_begin);
layer_script_begin(layer_fxtop_id, draw_layer_begin);

layer_script_end(layer_fxbottom_id, draw_layer_end);
layer_script_end(layer_enemy_id, draw_layer_end);
layer_script_end(layer_fxmid_id, draw_layer_end);
layer_script_end(layer_player_id, draw_layer_end);
layer_script_end(layer_fxtop_id, draw_layer_end);

#endregion