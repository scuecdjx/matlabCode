x=xlsread('��һ������.xlsx');%��������
stdr=std(x); %��������ı�׼�
[n,m]=size(x); %�����������
 sddata=zscore(x); %��׼���任
 [p,princ,egenvalue]=princomp(sddata); %�������ɷ�
 p=p(:,1:3); %���ǰ3 ���ɷ�ϵ����
 sc=princ(:,1:3); %ǰ3 ���ɷ�����
 egenvalue; %���ϵ�����������ֵ���������ɷ���ռ������
 per=100*egenvalue/sum(egenvalue); %�������ɷ���ռ�ٷֱȣ�