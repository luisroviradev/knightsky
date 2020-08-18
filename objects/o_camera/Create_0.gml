/// @description Initialize camera

//movement
velocity = vector_create(0, 0);
position = vector_create(x, y);
offset = vector_create(-room_width/2, -room_height/2)

//targetting
target_position_1 = vector_create(0, 0);
target_position_2 = vector_create(0, 0);
inter = .35;
speed_val = .25;
//distance_limit = 260;