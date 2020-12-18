///@function scr_explosion
///@arg x
///@arg y
function scr_explosion(x, y){
	particle_create(o_explosion_flash, x, y, global.pe_fxtop_normal);
	repeat(random_range(10, 15)){
		var _angle = random_range(0, 360);
		var _length = random(32);
		var _x = x + lengthdir_x(_length, _angle);
		var _y = y + lengthdir_y(_length, _angle);
		particle_create(o_explosion_fire, _x, _y, global.pe_fxtop_add);
		particle_create(o_explosion_smoke, _x, _y, global.pe_fxmid_add);
	}
}