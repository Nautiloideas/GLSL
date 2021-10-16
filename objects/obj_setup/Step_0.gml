/// @description Insert description here
// You can write your code in this edit

//实时更新相对位置标定在obj_wall中需要渲染的顶点

//向顶点缓冲区写入缓冲内容
//一系列的顶点数据需要存放到一个容器中，这个容器就叫做顶点缓冲区
function Quad(_vb,_x1,_y1,_x2,_y2)
{
	//z坐标作为顶点缓冲的范围
	
	//绘制时采取三角形的基本几何图元来绘制矩形
	//共需要六个顶点(实际重复了俩个顶点的使用)
	
	//第一个三角形
	
	//设置到点位(x1,y1,0)
	vertex_position_3d(_vb,_x1,_y1,0);
	//从(x1,y1,0)移动到(x1,y1,1)
	vertex_position_3d(_vb,_x1,_y1,1);
	//从(x1,y1,1)的移动到(x2,y2,0)
	vertex_position_3d(_vb,_x2,_y2,0);
	
	//第二个三角形
	
	//从(x2,y2,0)的移动到(x1,y1,1)
	vertex_position_3d(_vb,_x1,_y1,1);
	//从(x1,y1,1)的移动到(x2,y2,0)
	vertex_position_3d(_vb,_x2,_y2,0);
	//从(x2,y2,0)的移动到(x2,y2,1)
	vertex_position_3d(_vb,_x2,_y2,1);
}

//将定义的3d顶点格式写入定义的vb中
//说明顶点着色器渲染的方式为3d顶点格式
vertex_begin(vb,vf);
var _vb = vb;
with(obj_wall){
	//填入3d格式的缓冲内容
	//写入(x1,y1)为wall的坐标,(x2,y2)为wall的贴图右下坐标
	Quad(_vb,x,y,x+sprite_width,y+sprite_height);
	//写入(x1,y1)为wall的贴图左下坐标,(x2,y2)为wall的贴图右下坐标
	Quad(_vb,x+sprite_width,y,x,y+sprite_height);
}
vertex_end(vb);