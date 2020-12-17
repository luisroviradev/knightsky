///@function SoundInstanceCreate
///@arg sound
///@arg emitter
///@arg pitch
///@arg loops
///@arg priority
function SoundInstanceCreate(_sound, _emitter, _pitch, _loops, _priority){
	var _si = new SoundInstance(_sound, _emitter, _pitch, _loops);
	_si.sound_id = audio_play_sound_on(_emitter, _sound, _loops, _priority);
	//audio_sound_pitch(_si.sound_id, 
	_si.this = _si;
	ds_list_add(o_controller_audio.sounds, _si);
	return _si;
}

///@function SoundInstance
///@arg sound
///@arg emitter
///@arg pitch
///@arg loops
function SoundInstance(_sound, _emitter, _pitch, _loops) constructor{
	this = 0;
	sound = _sound;
	sound_id = noone;
	emitter = _emitter;
	pitch = _pitch;
	actual_pitch = pitch * get_dt_mod();
	loops = _loops;
	
	///@function update_pitch
	///@arg pitch
	static update_pitch = function(_pitch){
		pitch = _pitch;
	}
	
	///@function update_sound
	static update_sound = function(){
		if(audio_is_playing(sound_id)){
			actual_pitch = pitch * get_dt_mod();
			audio_sound_pitch(sound_id, actual_pitch);
		}
	}
	
	///@function stop_sound
	static stop_sound = function(){
		audio_stop_sound(sound_id);
	}
	
}