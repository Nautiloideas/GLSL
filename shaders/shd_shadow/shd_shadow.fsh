//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	//将绘制的区域绘制为黑色，成为阴影区域
    gl_FragColor = vec4(vec3(0.0),1.0);
}
