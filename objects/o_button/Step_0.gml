/// @description Insert description here
// You can write your code in this editor

var _left = x - width/2;
var _top = y;
var _right = _left + width;
var _bottom = _top + height;

if(point_in_rectangle(mouse_x, mouse_y, _left, _top, _right, _bottom)){
	state = 1;
	if(mouse_check_button_pressed(mb_left)){
		if(audio_is_playing(global.button_sound)) audio_stop_sound(global.button_sound);
		//audio_play_sound(snd_button_click, 0, false);
	}
	if(mouse_check_button(mb_left)){
		state = 2;
	}
	if(mouse_check_button_released(mb_left)){
		if(action != noone) script_execute(action);
		//play a sound
		
	}
	if(!enter){
		//global.button_sound = audio_play_sound(choose(snd_button_hover_0, snd_button_hover_1, snd_button_hover_2, snd_button_hover_3, snd_button_hover_4, snd_button_hover_5, snd_button_hover_6, snd_button_hover_7, snd_button_hover_8, snd_button_hover_9, snd_button_hover_10, snd_button_hover_11), 0, false);
		enter = true;
	}
	state_follower = lerp(state_follower, 1, .5 * get_dt());
}else{
	enter = false;
	state = 0;
	state_follower = lerp(state_follower, 0, .5 * get_dt());
}
state_follower = clamp(state_follower, 0, 1);
	
