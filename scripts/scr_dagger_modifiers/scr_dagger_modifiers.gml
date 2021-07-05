

function wiggle() constructor{
	function dagger_init(dagger){
		dagger.wiggle_amount = 0
		dagger.wiggle_offset = random(10);
	}
	function process(dagger){
		dagger.wiggle_amount = wave(-5, 5, .25, dagger.wiggle_offset);
		dagger.dagger_direction += dagger.wiggle_amount;
	}
}

function split() constructor{
	function dagger_init(dagger){}
	function process(dagger){
		if(dagger.hp/dagger.hp_max == 1){
			var _inst = instance_create_layer(dagger.position.x, dagger.position.y, LAYER_PLAYER, o_dagger);
			_inst.dagger_direction += 45;
			_inst.hp -= 1;
			_inst = instance_create_layer(dagger.position.x, dagger.position.y, LAYER_PLAYER, o_dagger);
			_inst.dagger_direction -= 45;
			_inst.hp -= 1;
		}
	}
}