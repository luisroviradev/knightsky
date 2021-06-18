///@function scr_explosion
///@arg x
///@arg y
function scr_explosion(x, y){
	flash(x, y, 50);
	var _s = choose(snd_explosion_0, snd_explosion_1, snd_explosion_2, snd_explosion_3, snd_explosion_4);
	var _p = random_range(.85, 1.2);
	SoundInstanceAt(_s, _p, 10, x, y);
	repeat(random_range(10, 15)){
		var _angle = random_range(0, 360);
		var _length = random(32);
		var _x = x + lengthdir_x(_length, _angle);
		var _y = y + lengthdir_y(_length, _angle);
		particle_create(o_explosion_fire, _x, _y, global.pe_fxmid_add);
	}
	repeat(random_range(10, 15)){
		var _angle = random_range(0, 360);
		var _length = random(32);
		var _x = x + lengthdir_x(_length, _angle);
		var _y = y + lengthdir_y(_length, _angle);
		particle_create(o_explosion_smoke, _x, _y, global.pe_fxmid_add);
	}
	repeat(random_range(4, 6)){
		var _angle = random_range(0, 360);
		var _length = random(32);
		var _x = x + lengthdir_x(_length, _angle);
		var _y = y + lengthdir_y(_length, _angle);
		particle_create(o_explosion_debris, _x, _y, global.pe_fxtop_add);
	}
}