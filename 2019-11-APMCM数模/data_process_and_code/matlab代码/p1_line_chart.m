economic_vitality = xlsread('./����ʡ10�꾭�û���.xlsx','B2:P7'); %��ȡһ��������10����ľ��û�������
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%���ֵ
y_low = -2;y_high = 2;y_change = 1;%y�᷶Χ�Լ����

a = economic_vitality(:,1);%�ľ��û�������
b = economic_vitality(:,3);%����ʡ���˿�����
c = economic_vitality(:,4);%����ʡ����ҵ��������
d = economic_vitality(:,5);%����ʡ����ҵ�ʱ�����

plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m'); %���ԣ���ɫ�����

axis([2009,2018,y_low,y_high])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[2009:1:2018]) %x�᷶Χ����
set(gca,'YTick',[y_low:y_change:y_high]) %y�᷶Χ����
legend('Economic vitality','Population','Number of companies','Registered capital of enterprises');   %���ϽǱ�ע
xlabel('Year')  %x����������
ylabel('Economic vitality and other data') %y����������

