/// @description initialize
dagger_modifiers = ds_list_create();
dagger_speed = 20;
dagger_damage = 1;
dagger_life = 10;
dagger_accuracy = 5;
dagger_direction = 0;
dagger_size = .2;


function add_modifier(modifier){
	for(var _i = 0; _i < ds_list_size(dagger_modifiers); _i++){
		if(modifier.name == dagger_modifiers[|_i].name){
			delete dagger_modifiers[|_i];
			dagger_modifiers[|_i] = modifier;
			return;
		}
	}
	ds_list_add(dagger_modifiers, modifier);
}

add_modifier(new wiggle([10, .25]));
add_modifier(new split([3, 5, 0]));

