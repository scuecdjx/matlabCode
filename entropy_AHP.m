%clc,clear;
a = load('E:\qqfileRecv\���ݹ�һ������.txt');
w = [.17 .17 .16 .5];
for j=1:4
   h(j) = entropy(a(:,j)); %��
end
e = (1-h)./sum(1-h);%��Ȩ
result = (e.*w)/(sum(e.*w));
rank2 = sum(result.*a,2);
