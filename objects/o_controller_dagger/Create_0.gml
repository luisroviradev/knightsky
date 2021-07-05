/// @description initialize
dagger_modifiers = ds_list_create();
dagger_speed = 20;
dagger_damage = 1;
dagger_life = 60;
dagger_accuracy = 5;
dagger_direction = 0;
dagger_size = .2;


ds_list_add(dagger_modifiers, new wiggle());
ds_list_add(dagger_modifiers, new split());