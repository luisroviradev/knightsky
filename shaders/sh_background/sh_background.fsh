//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_vPos;

uniform vec2 u_pos;
uniform vec3 u_color;
uniform float u_time;
uniform float u_scale;

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

float random (in vec2 st) {
    return fract(sin(dot(st.xy, vec2(12.9898,78.233))) * 43758.5453123);
}

float noise (in vec2 st) {
    vec2 i = floor(st);
    vec2 f = fract(st);

    // Four corners in 2D of a tile
    float a = random(i);
    float b = random(i + vec2(1.0, 0.0));
    float c = random(i + vec2(0.0, 1.0));
    float d = random(i + vec2(1.0, 1.0));

    // Smooth Interpolation

    // Cubic Hermine Curve.  Same as SmoothStep()
    vec2 u = smoothstep(0.,1.,f);

    // Mix 4 coorners percentages
    return mix(a, b, u.x) +
            (c - a)* u.y * (1.0 - u.x) +
            (d - b) * u.x * u.y;
}

float fbm ( in vec2 _st) {
    float v = 0.0;
    float a = 0.5;
    vec2 shift = vec2(100.0);
    // Rotate to reduce axial bias
    mat2 rot = mat2(cos(0.5), sin(0.5),
                    -sin(0.5), cos(0.50));
    for (int i = 0; i < 5; ++i) {
        v += a * noise(_st);
        _st = rot * _st * 2.0 + shift;
        a *= 0.5;
    }
    return v;
}

void main()
{
	vec2 st = (v_vPos.xy - u_pos.xy) * u_scale;

    vec2 q = vec2(0.);
    q.x = fbm( st + 0.00*u_time);
    q.y = fbm( st + vec2(1.0));

    vec2 r = vec2(0.);
    r.x = fbm( st + 1.0*q + vec2(1.7,9.2)+ 0.15*u_time );
    r.y = fbm( st + 1.0*q + vec2(8.3,2.8)+ 0.126*u_time);

    float f = fbm(st+r);
    
    int xPos = int(mod(v_vPos.x,4.0));
	int yPos = int(mod(v_vPos.y,4.0));
	
	int dith = patCalc(f * f * f * f * 6., xPos, yPos);
	
    gl_FragColor = vec4(vec3(f * f  * u_color), float(dith) * f * f);
}
