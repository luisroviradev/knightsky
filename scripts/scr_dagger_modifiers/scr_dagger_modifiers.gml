

function wiggle(arr) constructor{
	name = "wiggle";
	wiggle_range = arr[0]
	wiggle_time = arr[1]
	function dagger_init(dagger){
		dagger.wiggle_amount = 0
		dagger.wiggle_offset = random(10);
	}
	function process(dagger){
		dagger.wiggle_amount = wave(-wiggle_range, wiggle_range, wiggle_time, dagger.wiggle_offset);
		dagger.dagger_direction += dagger.wiggle_amount;
	}
}

function split(arr) constructor{
	name = "split"
	split_num = arr[0];
	split_angle = arr[1];
	split_when = arr[2];
	function dagger_init(dagger){
		dagger.split_done = false;
	}
	function process(dagger){
		if((1 - (dagger.hp/dagger.hp_max)) >= split_when and !dagger.split_done){
			//construct daggers
			for(var _n = 0; _n < split_num; _n++){
				var _inst = instance_create_layer(dagger.position.x, dagger.position.y, LAYER_PLAYER, o_dagger);
				_inst.dagger_direction += -((split_num-1) * split_angle * .5) + _n * split_angle;
				_inst.hp -= 1;
				_inst.split_done = true;
			}
			//free first dagger
			dagger.hp = 0;
		}
	}
}