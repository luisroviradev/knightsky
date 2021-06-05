/// @description Initialize structs

///@function WaveCreate
///@arg wave_elements
///@arg spawn_timer
///@arg wave_timer
function WaveCreate(_wave_elements, _spawn_timer, _wave_timer){
	var _gw = new Wave(_wave_elements, _spawn_timer, _wave_timer);
	_gw.this = _gw;
	return _gw;
}

///@function Wave
///@arg wave_elements
///@arg spawn_timer
///@arg wave_timer
function Wave(_wave_elements, _spawn_timer, _wave_timer) constructor{
	this = 0;
	wave_elements = _wave_elements;
	spawn_timer = _spawn_timer;
	wave_timer = _wave_timer;
	internal_spawn_timer = _spawn_timer;
	internal_wave_timer = _wave_timer;
	chance_total = 0;
	for(var _i = 0; _i < array_length(_wave_elements); _i++){
		chance_total += _wave_elements[_i].chance;
	}
	
	///@function update
	///@arg dt
	update = function(_dt){
		internal_spawn_timer -= _dt;
		if(internal_spawn_timer <= 0){
			internal_spawn_timer += spawn_timer;
			this.spawn();
		}
		internal_wave_timer -= _dt;
		if(internal_wave_timer <= 0){
			return true;
		}
		return false;
	}
	
	///@function spawn
	spawn = function(){
		var _chance = random(chance_total);
		var _counter = 0;
		for(var _i = 0; _i < array_length(wave_elements); _i++){
			if(_chance < wave_elements[_i].chance + _counter and _chance >= _counter){
				wave_elements[_i].spawn();
				return;
			}else{
				_counter += wave_elements[_i].chance;
			}
		}
	}
	
	///@function clear
	clear = function(){
		for(var _i = 0; _i < array_length(wave_elements); _i++){
			delete wave_elements[_i];
		}
		wave_elements = noone;
	}
}



///@function WaveElementCreate
///@arg enemy
///@arg chance
function WaveElementCreate(_enemy, _chance) constructor{
	var _we = new WaveElement(_enemy, _chance);
	_we.this = _we;
	return _we;
}
///@function WaveElement
///@arg enemy
///@arg chance
function WaveElement(_enemy, _chance) constructor{
	this = 0;
	enemy = _enemy;
	chance = _chance;
	
	///@function spawn
	spawn = function(){
		var _len = 1000;
		var _dir = random(360);
		instance_create_layer(	o_player.position.x + lengthdir_x(_len, _dir),
								o_player.position.y + lengthdir_y(_len, _dir),
								LAYER_ENEMY, enemy);
	}
}