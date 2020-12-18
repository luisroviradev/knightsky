/// @description initalize a particle

var _v_pos = camera_get_position();
position = Vec2Create(x, y);
x = position.x - _v_pos.y;
y = position.x - _v_pos.y;
delete _v_pos;

life = random_range(life_min, life_max);
rotation = random_range(rotation_min, rotation_max);
rotation_d = random_range(rotation_d_min, rotation_d_max) * (rotation_d_negate ? choose(-1, 1) : 1);
spd = random_range(start_speed_min, start_speed_max);
acceleration = (random_range(end_speed_min, end_speed_max) - spd) / life;
image_angle = random_range(angle_min, angle_max);
angle_d = random_range(angle_d_min, angle_d_max) * (angle_d_negate ? choose(-1, 1) : 1);
scale = random_range(scale_start_min, scale_start_max);
scale_d = 0;
anim_speed = image_number / life;
alpha_d = (alpha_end - alpha_start) / life;

image_speed = 0;
image_xscale = scale;
image_yscale = scale;
image_alpha = alpha_start;