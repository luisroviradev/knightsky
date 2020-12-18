///@function sprite_flash
///@arg steps
function sprite_flash(_steps){
	var _flash = instance_create_layer(x, y, LAYER_FXTOP, o_sprite_flash);
	_flash.life = _steps;
	_flash.host = self;
	_flash.sprite_index = sprite_index;
	_flash.image_index = image_index;
	_flash.image_angle = image_angle;
	_flash.image_xscale = image_xscale;
	_flash.image_yscale = image_yscale;
}