/// @description Initialize Wave Controller

event_perform(ev_other, ev_user0);

waves = [
	WaveCreate([
			WaveElementCreate(o_wasp, 1)
		], 2 * 60, 20 * 60),
	WaveCreate([
			WaveElementCreate(o_wasp, 1)
		], 1 * 60, 20 * 60),
	WaveCreate([
			WaveElementCreate(o_wasp, 1),
			WaveElementCreate(o_blorp, 1)
		], 1 * 60, 20 * 60),
	WaveCreate([
			WaveElementCreate(o_blorp, 1)
		], 1 * 60, 20 * 60),
];
current_wave = 0;