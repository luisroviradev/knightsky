/// @description update sounds

var _size = ds_list_size(sounds);
for(var _i = _size - 1; _i >= 0; _i--){
	var _s = sounds[|_i];
	_s.update_sound();
	if(!audio_is_playing(_s.sound_id)){
		delete _s;
		ds_list_delete(sounds, _i);
	}
}
//show_debug_message(_size);