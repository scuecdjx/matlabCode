clc,clear;
a=[1 1 4 3 5;1 1 3 3 3;1/4 1/3 1 2 2;1/3 1/3 1/2 1 3;1/5 1/3 1/2 1/3 1];
lammax_a = max(eig(a))%��a�������ֵ
CI=(lammax_a-length(a))/(length(a)-1)%����һ����ָ��
RI=[0 0 0.58 0.96 1.12 1.24 1.32 1.41 1.45];
CR=CI/RI(length(a))%һ���Լ���
for i=1:(length(a))
c=prod(a(i,:))^(1/length(a));%����ÿһ�еļ���ƽ��ֵ
d(i)=c;
end
for i=1:length(a)
    e=d(i)/sum(d);
    w(i)=e;%��������
end
w