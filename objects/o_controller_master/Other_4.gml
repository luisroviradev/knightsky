/// @description Insert description here
// You can write your code in this editor
if(room == r_game){
	event_modifier_handler = instance_create_layer(0, 0, LAYER_CONTROL, o_event_modifier_handler);
	dagger_controller = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_dagger);
	
	player = instance_create_layer(0, 0, LAYER_PLAYER, o_player);
	con_hud = instance_create_layer(0, 0, LAYER_HUD, o_controller_hud);

	wave_controller = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_waves);
}