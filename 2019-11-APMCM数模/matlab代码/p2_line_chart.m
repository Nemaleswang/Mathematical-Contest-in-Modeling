economic_vitality = xlsread('../�ɶ����û���09-18.xlsx'); %��ȡһ��������10����ľ��û�������
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%���ֵ
y_low = 0;y_high = 1.5;y_change = 0.1;%y�᷶Χ�Լ����


a = economic_vitality(:,9);%�ɶ���y����
%a = flip(a);


plot(x,a,'-+r'); %���ԣ���ɫ�����

axis([2009,2018,y_low,y_high])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[2009:1:2018]) %x�᷶Χ����
set(gca,'YTick',[y_low:y_change:y_high]) %y�᷶Χ����
legend('Chengdu');   %���ϽǱ�ע
xlabel('Year')  %x����������
ylabel('Total Value of Import and Export') %y����������
