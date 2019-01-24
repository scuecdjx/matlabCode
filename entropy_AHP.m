%clc,clear;
a = load('E:\qqfileRecv\数据归一化排序.txt');
w = [.17 .17 .16 .5];
for j=1:4
   h(j) = entropy(a(:,j)); %熵
end
e = (1-h)./sum(1-h);%熵权
result = (e.*w)/(sum(e.*w));
rank2 = sum(result.*a,2);
