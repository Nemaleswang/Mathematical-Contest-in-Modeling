%clc
for i = 9:9
    str1 = 'C:\Users\bmi\Desktop\APMCM数模\problem3-各城市经济指标09-18年总表.xlsx';
    filename = str1;
    sheetnum = i;
    chushi = xlsread(filename,i,'B2:P20');%读取数据
    a = chushi;
    a = zscore(a); %数据标准化
    r = corrcoef(a); %计算相关系数
    [vec1, lamda, rate] = pcacov(r); %特征向量，特征值，贡献率
    add_rate = cumsum(rate); %累加贡献率
    f = repmat(sign(sum(vec1)),size(vec1,1),1);
    vec2 = vec1.*f;
    num = 4; %选取的主成分数量
    df = a*vec2(:,1:num); %计算各个主成分得分
    tf = df*rate(1:num)/100; %计算总得分
    [stf,ind] = sort(tf, 'descend');%排序得分
    stf = stf';ind = ind';
    city_name = importdata('./region_name.txt');%读入城市数据
    cn_sort = city_name; 
    [r,c] = size(ind);
    for i = 1:c %对城市按照之前的值排序
        city_name(ind(1,i));
        cn_sort(i) = city_name(ind(1,i));
    end
    ind = sort(ind);
    stf = num2cell(stf');ind = num2cell(ind');
    res = [cn_sort stf ind];
    %eval(['var', num2str(i), '=', 'res', ';']);
    %res = sortrows(res,1);
    %blank = [0,0,0];
    %res = [res;num2cell(blank)];
    %title = {'城市名称', '经济活力指数', '排名'}; 
    %res = {title;res};
    %s = xlsread('C:/Users/bmi/Desktop/APMCM数模/matlab代码/2009-2018省份排名.xlsx');
    %range = size(s,1)+2;
    %s = xlswrite('C:/Users/bmi/Desktop/APMCM数模/matlab代码/2009-2018省份排名.xlsx', res, 1, num2str(range));
end
