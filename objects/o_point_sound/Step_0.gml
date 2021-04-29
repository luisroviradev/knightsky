/// @description Insert description here
// You can write your code in this editor

if(!si.is_playing()){
	delete si;
	instance_destroy();
	show_debug_message("dying");
}