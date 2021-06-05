/// @description Insert description here
// You can write your code in this editor
if(room == r_game){
	player = instance_create_layer(0, 0, LAYER_PLAYER, o_player);
	con_hud = instance_create_layer(0, 0, LAYER_HUD, o_controller_hud);


	#region
	wave_controller = instance_create_layer(0, 0, LAYER_CONTROL, o_controller_waves);
	#endregion
}