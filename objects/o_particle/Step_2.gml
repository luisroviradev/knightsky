/// @description do stuff to particle

var _dt = get_dt();
life -= _dt;

//position
rotation += rotation_d * _dt;
spd += acceleration * _dt;
var _s = spd * _dt;
position.x += dcos(rotation) * _s;
position.y += -dsin(rotation) * _s;

x = position.x - o_camera.position.x;
y = position.y - o_camera.position.y;

//appearance
iscale += scale_d * _dt;
image_xscale = iscale;
image_yscale = iscale;
image_angle += angle_d * _dt;
image_index += anim_speed * _dt;
image_alpha += alpha_d * _dt;

if(life <= 0){
	instance_destroy();
}

