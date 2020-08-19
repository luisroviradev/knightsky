///@func flash
///@arg x
///@arg y
///@arg size
function flash(_x, _y, _size){
	var _inst = instance_create_layer(_x, _y, LAYER_FXTOP, o_flash);
	_size /= 500;
	_inst.image_xscale = _size;
	_inst.image_yscale = _size;
	return _inst;
}