clear;clc
options = optimoptions('fsolve','Display','iter','PlotFcn',@optimplotfirstorderopt);
fun = @ZuoBiaoFangCheng_ERWEI;
x0 = [10,500];
x = fsolve(fun,x0,options)

%����m��n��p��q����ͼƬ�еĵ�λ��
a=ZuoBiaoBianHuan([500,703]);
b=ZuoBiaoBianHuan([1224,609]);
c=ZuoBiaoBianHuan([806,651]);
d=ZuoBiaoBianHuan([902,641]);
m=ZuoBiaoBianHuan([949,1411]);
n=ZuoBiaoBianHuan([1082,1276]);
p=ZuoBiaoBianHuan([1259,1496]);
q=ZuoBiaoBianHuan([1353,1334]);


item_width = norm(m-q);%������������Ķ���������������ģ
item_width_true=0.8;%��λ����
trans_rate = item_width_true/item_width;%��������ʵ����֮��ı���

for i=1:length(x)-1%ת��Ϊ��ʵ����
    scale(i)=x(i)*trans_rate;
end