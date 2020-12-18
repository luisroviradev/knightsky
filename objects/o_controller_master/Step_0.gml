/// @description DELETE LATER PLS

if(mouse_check_button_pressed(mb_right)){
	var _v = camera_get_position();
	scr_explosion(mouse_x + _v.x, mouse_y + _v.y);
	delete _v;
}