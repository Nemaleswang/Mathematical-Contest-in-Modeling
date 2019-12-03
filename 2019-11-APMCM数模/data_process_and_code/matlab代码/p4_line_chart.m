economic_vitality = xlsread('C:\Users\bmi\Desktop\APMCM��ģ\matlab����\������ǰ������Լ��ɶ����ݱ�׼��.xlsx'); %��ȡһ��������10����ľ��û�������
year = [1 2 3 4 5 6];

x = 1:1:15;%���ֵ
y_low = -2;y_high = 2;y_change = 0.4;%y�᷶Χ�Լ����

a = economic_vitality(1,:);%�Ϻ�������
b = economic_vitality(2,:);%����������
c = economic_vitality(3,:);%����������
d = economic_vitality(4,:);%����������
e = economic_vitality(5,:);%���������
f = economic_vitality(6,:);%�ɶ�������

plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m',x,e,'-xc',x,f,'-sk'); %���ԣ���ɫ�����

axis([1,15,y_low,y_high])  %ȷ��x����y���ͼ��С
set(gca,'XTick',[1:1:15]) %x�᷶Χ����
set(gca,'YTick',[y_low:y_change:y_high]) %y�᷶Χ����
legend('Shanghai','Beijing','Chongqing','Guangzhou','Tianjing','Chengdu');   %���ϽǱ�ע
xlabel('Factor')  %x����������
ylabel('Number') %y����������
set(gca, 'xtick',1:15,'xticklabel',{'Total Population','GDP','General Public Budget Revenue','General Public Budget Expenditure','Investment in Fixed Assets','Savings Deposit','Average Resident Wage','Number of Post Offices','Number of Landline Users','Total Retail Sales of Consumer Goods','Total Value of Import and Export','Number of Public Vehicles Under Operation','Number of Undergraduates','Number of Hospitals','Number of Licensed Doctors'});
set(gca,'XTickLabelRotation',45);