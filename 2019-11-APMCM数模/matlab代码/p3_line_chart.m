economic_vitality = xlsread('./region_economic_vitality.xlsx'); %��ȡһ��������10����ľ��û�������
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%���ֵ
y_low = -3;y_high = 6;y_change = 1;%y�᷶Χ�Լ����

rank1 = 1;%���û�����ֵ
rank2 = 2;%������ֵ

rank = rank1;%����ͳ�ƾ��û���

a = economic_vitality(:,4*3-2);%��һ������(����)��y����
b = economic_vitality(:,13*3-2);%�ڶ������У���������y����
c = economic_vitality(:,14*3-2);%���������У����ڣ���y����
d = economic_vitality(:,19*3-2);%���ĸ����У�֣�ݣ���y����


plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m'); %���ԣ���ɫ�����

axis([2009,2018,y_low,y_high])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[2009:1:2018]) %x�᷶Χ����
set(gca,'YTick',[y_low:y_change:y_high]) %y�᷶Χ����
legend('Chongqing','Shenyang','Shenzhen','Zhengzhou');   %���ϽǱ�ע
xlabel('Year')  %x����������
ylabel('Economic vitality') %y����������
