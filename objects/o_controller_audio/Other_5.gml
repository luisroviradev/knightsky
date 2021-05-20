/// @description Insert description here
// You can write your code in this editor

var _size = ds_list_size(sounds);
for(var _i = _size - 1; _i >= 0; _i--){
	sounds[|_i].stop_sound()
	delete sounds[|_i];
}
ds_list_clear(sounds);