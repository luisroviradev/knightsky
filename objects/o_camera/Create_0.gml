/// @description Initialize camera

//movement
velocity = Vec2Create(0, 0);
position = Vec2Create(x, y);
offset = Vec2Create(-room_width/2, -room_height/2)

//show_debug_message(position.to_string());

//targetting
inter = .35;
speed_val = .25;
//distance_limit = 260;