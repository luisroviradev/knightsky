/// @description DELETE LATER PLS
/*
if(mouse_check_button_pressed(mb_right)){
	var _v = camera_get_position();
	scr_explosion(mouse_x + _v.x, mouse_y + _v.y);
	delete _v;
}*/


if(room == r_game){
	if(in_get_pressed(KEYBIND.PAUSE)){
		room_goto(r_menu);
	}
}