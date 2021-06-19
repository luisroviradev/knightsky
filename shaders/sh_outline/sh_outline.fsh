//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPos;

uniform vec2 dimensions;
uniform vec3 colour;

int patCalc(float opacity, int xPos, int yPos)
{
	opacity *= 16.0;
    mat4 lookup = mat4(
		vec4(1.0 ,12.0,3.0 ,10.0),
        vec4(14.0,5.0 ,16.0,7.0 ),
        vec4(4.0 ,9.0 ,2.0 ,11.0 ),
        vec4(15.0,8.0 ,13.0,6.0 )
        );
	int retval = int((opacity - lookup[xPos][yPos]) + 1.0);
	retval += int(abs(float(retval)));
	retval  = int(sign(float(retval)));
    return retval;
}

void main()
{
	vec2 texel_dim = vec2(1.0/dimensions.x, 1.0/dimensions.y);
	vec4 base_color = texture2D(gm_BaseTexture, v_vTexcoord);
	/*
	float a_left = texture2D(gm_BaseTexture, v_vTexcoord - vec2(texel_dim.x, 0.0)).a;
	float a_right = texture2D(gm_BaseTexture, v_vTexcoord + vec2(texel_dim.x, 0.0)).a;
	float a_top = texture2D(gm_BaseTexture, v_vTexcoord - vec2(0.0, texel_dim.y)).a;
	float a_bottom = texture2D(gm_BaseTexture, v_vTexcoord + vec2(0.0, texel_dim.y)).a;
	*/
	if(base_color.a <= 0.0){
		base_color.rgb = colour/255.0;
		//base_color.a += (a_left + a_right + a_top + a_bottom);
		
		float _multiplier = 3.141592654/4.0;
		
		for(float _a = 0.0; _a < 8.0; _a++){
			float _dir = _a * _multiplier;
			vec2 _v = vec2(cos(_dir) * texel_dim.x, sin(_dir) * texel_dim.y);
			float _a1 = texture2D(gm_BaseTexture, v_vTexcoord + (_v)).a;
			float _a2 = texture2D(gm_BaseTexture, v_vTexcoord + (_v * 1.0)).a;
			base_color.a += _a1 + _a2;
		}
		
		base_color.rgb *= clamp(base_color.a / 2.0, 0.0, 1.0);
		base_color.a = clamp(base_color.a / 4.0, 0.0, 1.0);
	}
	
	base_color.a = float(patCalc(base_color.a, int(mod(v_vPos.x,4.0)), int(mod(v_vPos.y,4.0))));
	
    gl_FragColor = base_color;
}
