attribute vec3 in_Position;
//从外部获取的u_pos参数
uniform vec2 u_pos;
void main()
{
	vec2 pos = in_Position.xy;
	if(in_Position.z>0.)
	{
		vec2 dis = pos - u_pos;
		pos+=dis/sqrt(dis.x*dis.x+dis.y*dis.y) * 100000.0;
	}
    vec4 object_space_pos = vec4( pos.x, pos.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
}
