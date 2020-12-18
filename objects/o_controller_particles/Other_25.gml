/// @description clean up

particle_emitter_destroy(global.pe_fxtop_add, true);
particle_emitter_destroy(global.pe_fxtop_normal, true);

particle_emitter_destroy(global.pe_player_add, true);
particle_emitter_destroy(global.pe_player_normal, true);

particle_emitter_destroy(global.pe_fxmid_add, true);
particle_emitter_destroy(global.pe_fxmid_normal, true);

particle_emitter_destroy(global.pe_enemy_add, true);
particle_emitter_destroy(global.pe_enemy_normal, true);

particle_emitter_destroy(global.pe_fxbottom_add, true);
particle_emitter_destroy(global.pe_fxbottom_normal, true);