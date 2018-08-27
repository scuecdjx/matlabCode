x=xlsread('第一问数据.xlsx');%输入数据
stdr=std(x); %求各变量的标准差；
[n,m]=size(x); %矩阵的行与列
 sddata=zscore(x); %标准化变换
 [p,princ,egenvalue]=princomp(sddata); %调用主成分
 p=p(:,1:3); %输出前3 主成分系数；
 sc=princ(:,1:3); %前3 主成分量；
 egenvalue; %相关系数矩阵的特征值，即各主成分所占比例；
 per=100*egenvalue/sum(egenvalue); %各个主成分所占百分比；