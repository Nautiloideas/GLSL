/// @description Insert description here
// You can write your code in this editor

u_pos=shader_get_uniform(shd_light,"u_pos");
u_pos2=shader_get_uniform(shd_shadow,"u_pos");

//定义新的顶点格式
//顶点格式是存储在顶点中的数据的描述
vertex_format_begin();
//顶点格式中包含3d位置数据
vertex_format_add_position_3d();
//将定义的顶点格式保存在vf中
vf = vertex_format_end();
vb = vertex_create_buffer();

