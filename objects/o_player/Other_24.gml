/// @description Collision

slow_time(.5, 10);
sprite_flash(3);
screen_shake(5, 7);
hp -= get_dt();
if(!hit_sound){
	hit_sound = SoundInstanceCreate(snd_get_hit, audio_emitter, 1, false, 0);
}
