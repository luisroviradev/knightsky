/// @description free memory
if(collides_with > 0){
	ds_list_destroy(collision_list);
}
if(has_audio){
	audio_emitter_free(audio_emitter);
}

delete position;
delete velocity;