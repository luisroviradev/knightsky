/// @description update shake

var _dt = get_dt();

steps -= _dt;

if(check_dt_sum()){
	o_camera.shake(amount);
}

if(steps <= 0){
	instance_destroy();
}