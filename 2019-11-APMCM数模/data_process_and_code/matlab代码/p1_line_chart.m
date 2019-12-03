economic_vitality = xlsread('./湖北省10年经济活力.xlsx','B2:P7'); %读取一个地区的10来年的经济活力分数
year = [2009 2010 2011 2012 2013 2014 2015 2016 2017 2018];


x = 2009:1:2018;%间隔值
y_low = -2;y_high = 2;y_change = 1;%y轴范围以及间隔

a = economic_vitality(:,1);%的经济活力数据
b = economic_vitality(:,3);%湖北省的人口数据
c = economic_vitality(:,4);%湖北省的企业数量数据
d = economic_vitality(:,5);%湖北省的企业资本数据

plot(x,a,'-+r',x,b,'-og', x,c,'-*b',x,d,'-.m'); %线性，颜色，标记

axis([2009,2018,y_low,y_high])  %确定x轴与y轴框图大小
set(gca,'XTick',[2009:1:2018]) %x轴范围与间隔
set(gca,'YTick',[y_low:y_change:y_high]) %y轴范围与间隔
legend('Economic vitality','Population','Number of companies','Registered capital of enterprises');   %右上角标注
xlabel('Year')  %x轴坐标描述
ylabel('Economic vitality and other data') %y轴坐标描述

