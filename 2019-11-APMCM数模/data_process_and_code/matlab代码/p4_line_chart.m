economic_vitality = xlsread('C:\Users\bmi\Desktop\APMCM数模\matlab代码\问题四前五城市以及成都数据标准化.xlsx'); %读取一个地区的10来年的经济活力分数
year = [1 2 3 4 5 6];

x = 1:1:15;%间隔值
y_low = -2;y_high = 2;y_change = 0.4;%y轴范围以及间隔

a = economic_vitality(1,:);%上海市数据
b = economic_vitality(2,:);%北京市数据
c = economic_vitality(3,:);%重庆市数据
d = economic_vitality(4,:);%广州市数据
e = economic_vitality(5,:);%天津市数据
f = economic_vitality(6,:);%成都市数据

plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m',x,e,'-xc',x,f,'-sk'); %线性，颜色，标记

axis([1,15,y_low,y_high])  %确定x轴与y轴框图大小
set(gca,'XTick',[1:1:15]) %x轴范围与间隔
set(gca,'YTick',[y_low:y_change:y_high]) %y轴范围与间隔
legend('Shanghai','Beijing','Chongqing','Guangzhou','Tianjing','Chengdu');   %右上角标注
xlabel('Factor')  %x轴坐标描述
ylabel('Number') %y轴坐标描述
set(gca, 'xtick',1:15,'xticklabel',{'Total Population','GDP','General Public Budget Revenue','General Public Budget Expenditure','Investment in Fixed Assets','Savings Deposit','Average Resident Wage','Number of Post Offices','Number of Landline Users','Total Retail Sales of Consumer Goods','Total Value of Import and Export','Number of Public Vehicles Under Operation','Number of Undergraduates','Number of Hospitals','Number of Licensed Doctors'});
set(gca,'XTickLabelRotation',45);