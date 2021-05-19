/// @description initialize main particle emitters
global.pe_fxtop_add = particle_emitter_create(LAYER_FXTOP, bm_add);
global.pe_fxtop_normal = particle_emitter_create(LAYER_FXTOP, bm_normal);

global.pe_player_add = particle_emitter_create(LAYER_PLAYER, bm_add);
global.pe_player_normal = particle_emitter_create(LAYER_PLAYER, bm_normal);

global.pe_fxmid_add = particle_emitter_create(LAYER_FXMID, bm_add);
global.pe_fxmid_normal = particle_emitter_create(LAYER_FXMID, bm_normal);

global.pe_enemy_add = particle_emitter_create(LAYER_ENEMY, bm_add);
global.pe_enemy_normal = particle_emitter_create(LAYER_ENEMY, bm_normal);

global.pe_fxbottom_add = particle_emitter_create(LAYER_FXBOTTOM, bm_add);
global.pe_fxbottom_normal = particle_emitter_create(LAYER_FXBOTTOM, bm_normal);