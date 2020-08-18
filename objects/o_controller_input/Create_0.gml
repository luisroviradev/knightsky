/// @description Initialize controller

enum KEYSTATE{
	NONE,
	PRESSED,
	HELD,
	RELEASED
}

enum KEYBIND{
	SELECT,
	ACCELERATE,
	DECELERATE,
	SHOOT,
	RAILGUN
}

bindings = array_create(5);
num_bindings = array_length_1d(bindings);

bindings[KEYBIND.SELECT] = [mb_left, true, KEYSTATE.NONE];
bindings[KEYBIND.ACCELERATE] = [ord("W"), false, KEYSTATE.NONE];
bindings[KEYBIND.DECELERATE] = [vk_shift, false, KEYSTATE.NONE];
bindings[KEYBIND.SHOOT] = [mb_left, true, KEYSTATE.NONE];
bindings[KEYBIND.RAILGUN] = [mb_right, true, KEYSTATE.NONE];