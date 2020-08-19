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

//shaking
///@func shake
///@arg amount
function shake(_amount){
	var _len = random(_amount);
	var _dir = random(360);
	position.x += lengthdir_x(_len, _dir);
	position.y += lengthdir_y(_len, _dir);
}