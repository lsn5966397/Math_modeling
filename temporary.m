clear;clc
options = optimoptions('fsolve','Display','iter','PlotFcn',@optimplotfirstorderopt);
fun = @ZuoBiaoFangCheng_ERWEI;
x0 = [10,500];
x = fsolve(fun,x0,options)

%测量m，n，p，q点在图片中的的位置
a=ZuoBiaoBianHuan([500,703]);
b=ZuoBiaoBianHuan([1224,609]);
c=ZuoBiaoBianHuan([806,651]);
d=ZuoBiaoBianHuan([902,641]);
m=ZuoBiaoBianHuan([949,1411]);
n=ZuoBiaoBianHuan([1082,1276]);
p=ZuoBiaoBianHuan([1259,1496]);
q=ZuoBiaoBianHuan([1353,1334]);


item_width = norm(m-q);%求解两个向量的二范数：即向量的模
item_width_true=0.8;%单位：米
trans_rate = item_width_true/item_width;%像素与真实长度之间的比例

for i=1:length(x)-1%转换为真实长度
    scale(i)=x(i)*trans_rate;
end