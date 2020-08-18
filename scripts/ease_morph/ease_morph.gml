///@func ease_morph(from, to, progress, power)
///@desc Power greater than 1 is ease out and in. Power less than 1 is fast out, slow in the middle, fast in.
///@arg	from
///@arg to
///@arg progress
///@arg power
function ease_morph() {
	var _f = argument[0];
	var _t = argument[1];
	var _p = argument[2];
	var _e = abs(argument[3]);
	var _ran = _t - _f;

	var _val_l = 1 - power(1-_p, _e);
	var _val_r = power(_p, _e);
	var _val_i = (_p * _val_l) + ((1-_p) * _val_r);

	return (_val_i * _ran) + _f;


}
