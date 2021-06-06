/// @description Initialize Wave Controller

event_perform(ev_other, ev_user0);

waves = [
	WaveCreate([
			WaveElementCreate(o_wasp, 1)
		], .5 * 60, 100 * 60)
];
current_wave = 0;