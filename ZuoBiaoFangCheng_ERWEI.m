function F = ZuoBiaoFangCheng_ERWEI(x)
%����δ֪��x(1),x(2),x(3)�ֱ��Ӧd,h,theta
%����ʱע��A B C֮��Ĺ�ϵ�����ݷ�����ҪABC��ֱ�������Σ���AB��ֱ��AC��AΪ����
A=[-2266,243];
B=[-2310,153];
C=[-2460,271];
item_width=192;%���س���

x_a_world=x(1)+A(1);%x����������ϵ,��ʱ��Դ�������Ѿ�ת��Ϊ��ͼƬ��������ϵ
y_a_world=A(2);
z_a_world=-x(1)+A(1);

x_A_world=-x(2)*x_a_world/z_a_world;%��ʵ�������������ϵ
y_A_world=-x(2)*y_a_world/z_a_world;
z_A_world=-x(2);

x_b_world=x(1)+B(1);
y_b_world=B(2);
z_b_world=-x(1)+B(1);

x_B_world=-x(2)*x_b_world/z_b_world;
y_B_world=-x(2)*y_b_world/z_b_world;
z_B_world=-x(2);

x_c_world=x(1)+C(1);%x����������ϵ,��ʱ��Դ�������Ѿ�ת��Ϊ��ͼƬ��������ϵ
y_c_world=C(2);
z_c_world=-x(1)+C(1);

x_C_world=-x(2)*x_c_world/z_c_world;
y_C_world=-x(2)*y_c_world/z_c_world;
z_C_world=-x(2);

F(1) = (x_A_world-x_B_world)^2+(x_A_world-x_B_world)^2+(x_A_world-x_B_world)^2-item_width^2;
F(2) = (x_A_world-x_C_world)^2+(x_A_world-x_C_world)^2+(x_A_world-x_C_world)^2-item_width^2;
F(3) = (x_B_world-x_C_world)^2+(x_B_world-x_C_world)^2+(x_B_world-x_C_world)^2-1.414*item_width^2;
end