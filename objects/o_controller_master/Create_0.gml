/// @description Create all the other controllers
randomize();
con_delta = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_delta);
con_input = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_input);
con_draw = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_draw);
con_audio = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_audio);
con_particle = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_particles);
camera = instance_create_layer(-room_width/2, -room_height/2, LAYER_CONTROL, o_camera);
//player = instance_create_layer(0, 0, LAYER_PLAYER, o_player);
//con_hud = instance_create_layer(0, 0, LAYER_HUD, o_controller_hud);


//#region
//repeat(10){
//	instance_create_layer(random_range(-1000, 1000), random_range(-1000, 1000), LAYER_ENEMY, o_wasp);
//}
//#endregion

