/// @description update keybinds states

for(var _key = 0; _key < num_bindings; _key++){
	var _arr = bindings[_key];
	_arr[2] = KEYSTATE.NONE;
	if(_arr[1]){
		if(mouse_check_button_pressed(_arr[0])){
			_arr[2] = KEYSTATE.PRESSED;
		}else if(mouse_check_button(_arr[0])){
			_arr[2] = KEYSTATE.HELD;
		}else if(mouse_check_button_released(_arr[0])){
			_arr[2] = KEYSTATE.RELEASED;
		}
	}else{
		if(keyboard_check_pressed(_arr[0])){
			_arr[2] = KEYSTATE.PRESSED;
		}else if(keyboard_check(_arr[0])){
			_arr[2] = KEYSTATE.HELD;
		}else if(keyboard_check_released(_arr[0])){
			_arr[2] = KEYSTATE.RELEASED;
		}
	}
	bindings[_key] = _arr;
}
