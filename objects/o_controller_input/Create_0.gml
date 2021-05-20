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
	RAILGUN,
	PAUSE
}

bindings = array_create(6);
num_bindings = array_length(bindings);

bindings[KEYBIND.SELECT] = [mb_left, true, KEYSTATE.NONE];
bindings[KEYBIND.ACCELERATE] = [ord("W"), false, KEYSTATE.NONE];
bindings[KEYBIND.DECELERATE] = [vk_shift, false, KEYSTATE.NONE];
bindings[KEYBIND.SHOOT] = [mb_left, true, KEYSTATE.NONE];
bindings[KEYBIND.RAILGUN] = [mb_right, true, KEYSTATE.NONE];
bindings[KEYBIND.PAUSE] = [vk_escape, false, KEYSTATE.NONE];