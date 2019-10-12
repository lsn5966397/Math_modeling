function F = ZuoBiaoFangCheng_ERWEI(x)
%三个未知量x(1),x(2),x(3)分别对应d,h,theta
%输入时注意A B C之间的关系，根据方程需要ABC是直角三角形，且AB垂直于AC，A为垂足
A=[-2266,243];
B=[-2310,153];
C=[-2460,271];
item_width=192;%像素长度

x_a_world=x(1)+A(1);%x是世界坐标系,此时在源程序中已经转换为了图片中心坐标系
y_a_world=A(2);
z_a_world=-x(1)+A(1);

x_A_world=-x(2)*x_a_world/z_a_world;%真实物体的世界坐标系
y_A_world=-x(2)*y_a_world/z_a_world;
z_A_world=-x(2);

x_b_world=x(1)+B(1);
y_b_world=B(2);
z_b_world=-x(1)+B(1);

x_B_world=-x(2)*x_b_world/z_b_world;
y_B_world=-x(2)*y_b_world/z_b_world;
z_B_world=-x(2);

x_c_world=x(1)+C(1);%x是世界坐标系,此时在源程序中已经转换为了图片中心坐标系
y_c_world=C(2);
z_c_world=-x(1)+C(1);

x_C_world=-x(2)*x_c_world/z_c_world;
y_C_world=-x(2)*y_c_world/z_c_world;
z_C_world=-x(2);

F(1) = (x_A_world-x_B_world)^2+(x_A_world-x_B_world)^2+(x_A_world-x_B_world)^2-item_width^2;
F(2) = (x_A_world-x_C_world)^2+(x_A_world-x_C_world)^2+(x_A_world-x_C_world)^2-item_width^2;
F(3) = (x_B_world-x_C_world)^2+(x_B_world-x_C_world)^2+(x_B_world-x_C_world)^2-1.414*item_width^2;
end