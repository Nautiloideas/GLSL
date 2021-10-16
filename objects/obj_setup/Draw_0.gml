/// @description Insert description here
// You can write your code in this editor
var _u_pos = u_pos;
var _u_pos2 = u_pos2;
var _vb = vb;

//此处均为对obj_light对象的着色器操作
with(obj_light){
	//设置shd_light为光源着色器
	shader_set(shd_light);
	
	//此函数用于将vec2,vec3,vec4的参数传入第一个参数所指定的uniform
	//此处传递的是将obj_light的x,y坐标给与了u_pos的vec2变量
	shader_set_uniform_f(_u_pos,x,y);
	//绘制一个区域给予着色器做渲染
	draw_set_colour(c_white);
	draw_rectangle(0,0,320,180,0);
	//-1表示没有纹理
	shader_set(shd_shadow);
	//此处传递的是将obj_light的x,y坐标给与了u_pos的vec2变量
	shader_set_uniform_f(_u_pos2,x,y);
	//pr_trianglelist：由列表中的单个三角形组成的图元
	vertex_submit(_vb,pr_trianglelist,-1);
}
shader_reset();