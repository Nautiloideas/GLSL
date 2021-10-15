attribute vec3 in_Position;
//将会传递片元着色器的pos参数
varying vec2 pos;
void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
	pos = in_Position.xy;
} 
