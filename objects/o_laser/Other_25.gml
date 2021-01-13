/// @description Insert description here
// You can write your code in this editor

with(o_player){
	SoundInstanceCreate(snd_railgun_hiss, audio_emitter, random_range(.8, 1.2), false, 100);
}

// Inherit the parent event
event_inherited();

