//从顶点着色器传递的pos参数
varying vec2 pos;
//从外部获取的u_pos参数
uniform vec2 u_pos;

void main()
{
	vec2 dis = pos - u_pos;
	
	float str = 1./sqrt(dis.x*dis.x+dis.y*dis.y);
    gl_FragColor = vec4(vec3(str),1.0);
}
