/// @description Insert description here
// You can write your code in this editor
var _u_pos = u_pos;
with(obj_light){
	
	shader_set(shd_light);
	shader_set_uniform_f(_u_pos,x,y);
	draw_rectangle(0,0,320,180,0);
	shader_reset();
}