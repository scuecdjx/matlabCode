clc,clear;
a=[1 1 4 3 5;1 1 3 3 3;1/4 1/3 1 2 2;1/3 1/3 1/2 1 3;1/5 1/3 1/2 1/3 1];
lammax_a = max(eig(a))%求a最大特征值
CI=(lammax_a-length(a))/(length(a)-1)%计算一致性指标
RI=[0 0 0.58 0.96 1.12 1.24 1.32 1.41 1.45];
CR=CI/RI(length(a))%一致性检验
for i=1:(length(a))
c=prod(a(i,:))^(1/length(a));%计算每一行的几何平均值
d(i)=c;
end
for i=1:length(a)
    e=d(i)/sum(d);
    w(i)=e;%特征向量
end
w