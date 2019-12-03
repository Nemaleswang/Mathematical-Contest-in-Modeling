economic_vitality = xlsread('../成都经济活力09-18.xlsx'); %读取一个地区的10来年的经济活力分数
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%间隔值
y_low = 0;y_high = 1.5;y_change = 0.1;%y轴范围以及间隔


a = economic_vitality(:,9);%成都的y数据
%a = flip(a);


plot(x,a,'-+r'); %线性，颜色，标记

axis([2009,2018,y_low,y_high])  %确定x轴与y轴框图大小
set(gca,'XTick',[2009:1:2018]) %x轴范围与间隔
set(gca,'YTick',[y_low:y_change:y_high]) %y轴范围与间隔
legend('Chengdu');   %右上角标注
xlabel('Year')  %x轴坐标描述
ylabel('Total Value of Import and Export') %y轴坐标描述
