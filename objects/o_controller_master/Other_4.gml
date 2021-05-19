/// @description Insert description here
// You can write your code in this editor
if(room == r_game){
	player = instance_create_layer(0, 0, LAYER_PLAYER, o_player);
	con_hud = instance_create_layer(0, 0, LAYER_HUD, o_controller_hud);


	#region
	repeat(10){
		instance_create_layer(random_range(-1000, 1000), random_range(-1000, 1000), LAYER_ENEMY, o_wasp);
	}
	#endregion
}