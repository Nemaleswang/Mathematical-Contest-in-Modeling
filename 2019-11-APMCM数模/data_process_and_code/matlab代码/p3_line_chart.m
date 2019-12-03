economic_vitality = xlsread('./region_economic_vitality.xlsx'); %读取一个地区的10来年的经济活力分数
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%间隔值
y_low = -3;y_high = 6;y_change = 1;%y轴范围以及间隔

rank1 = 1;%经济活力数值
rank2 = 2;%排名数值

rank = rank1;%现在统计经济活力

a = economic_vitality(:,4*3-2);%第一个城市(重庆)的y数据
b = economic_vitality(:,13*3-2);%第二个城市（沈阳）的y数据
c = economic_vitality(:,14*3-2);%第三个城市（深圳）的y数据
d = economic_vitality(:,19*3-2);%第四个城市（郑州）的y数据


plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m'); %线性，颜色，标记

axis([2009,2018,y_low,y_high])  %确定x轴与y轴框图大小
set(gca,'XTick',[2009:1:2018]) %x轴范围与间隔
set(gca,'YTick',[y_low:y_change:y_high]) %y轴范围与间隔
legend('Chongqing','Shenyang','Shenzhen','Zhengzhou');   %右上角标注
xlabel('Year')  %x轴坐标描述
ylabel('Economic vitality') %y轴坐标描述
