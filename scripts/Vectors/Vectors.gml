

///@function Vec2Create
///@arg x
///@arg y
function Vec2Create(_x, _y){
	var _v = new Vec2(_x, _y);
	_v.this = _v;
	return _v;
}


///@function Vec2
///@arg this
///@arg x
///@arg y
function Vec2(_x, _y) constructor{
	this = 0;
	x = _x;
	y = _y;
	
	#region setters
	///@function set
	///@arg x
	///@arg y
	static set = function(_x, _y){
		x = _x;
		y = _y;
		return this;
	}
	
	///@function set_from_vec
	///@arg vector
	static set_from_vec = function(_vector){
		x = _vector.x;
		y = _vector.y;
		return this;
	}
	
	///@function set_angle
	///@arg angle
	static set_angle = function(_angle){
		var _m = this.get_magnitude();
		x = lengthdir_x(_m, _angle);
		y = lengthdir_y(_m, _angle);
		return this;
	}
	
	///@function set_magnitude
	///@arg magnitude
	static set_magnitude = function(_magnitude){
		var _a = this.get_angle();
		x = lengthdir_x(_magnitude, _a);
		y = lengthdir_y(_magnitude, _a);
		return this;
	}
	#endregion
	
	#region getters
	///@function get_angle
	static get_angle = function(){
		return point_direction(0, 0, x, y);
	}
	
	///@function get_magnitude
	static get_magnitude = function(){
		return point_distance(0, 0, x, y);
	}
	#endregion
	
	///@function add
	///@arg other
	static add = function(_other){
		x += _other.x;
		y += _other.y;
		return this;
	}
	
	///@function subtract
	///@arg other
	static subtract = function(_other){
		x -= _other.x;
		y -= _other.y;
		return this;
	}
	
	///@function normalize
	static normalize = function(){
		var _m = this.get_magnitude();
		if(_m == 0){
			return this;
		}else{
			x /= _m;
			y /= _m;
			return this;
		}
	}
	
	///@function rotate
	///@arg rotation
	static rotate = function(_rotation){
		this.set_angle(this.get_angle() + _rotation);
		return this;
	}
	
	///@function scale
	///@arg scalar
	static scale = function(_scalar){
		x *= _scalar;
		y *= _scalar;
		return this;
	}
	
	///@function copy
	static copy = function(){
		return Vec2Create(x, y);
	}
	
	///@function to_string
	static to_string = function(){
		return "[" + string(x) + ", " + string(y) + "]";
	}
	
}
