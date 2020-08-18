///@func ease(from, to, progress, power)
///@desc Easing function. Input a negative power for easing in
///@arg	from
///@arg to
///@arg progress
///@arg power
function ease() {
	var _f = argument[0];
	var _t = argument[1];
	var _p = argument[2];
	var _e = abs(argument[3]);
	var _es = sign(argument[3]);
	var _ran = _t - _f;

	var _i_val = (_es > 0) ? power(_p, _e) : 1 - power(1-_p, _e);
	return (_i_val * _ran + _f);


}
