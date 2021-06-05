/// @description Insert description here
// You can write your code in this editor

if(waves[current_wave].update(get_dt())){
	current_wave ++;
	if(current_wave >= array_length(waves)){
		current_wave = 0;
	}
}