%clc
for i = 9:9
    str1 = 'C:\Users\bmi\Desktop\APMCM��ģ\problem3-�����о���ָ��09-18���ܱ�.xlsx';
    filename = str1;
    sheetnum = i;
    chushi = xlsread(filename,i,'B2:P20');%��ȡ����
    a = chushi;
    a = zscore(a); %���ݱ�׼��
    r = corrcoef(a); %�������ϵ��
    [vec1, lamda, rate] = pcacov(r); %��������������ֵ��������
    add_rate = cumsum(rate); %�ۼӹ�����
    f = repmat(sign(sum(vec1)),size(vec1,1),1);
    vec2 = vec1.*f;
    num = 4; %ѡȡ�����ɷ�����
    df = a*vec2(:,1:num); %����������ɷֵ÷�
    tf = df*rate(1:num)/100; %�����ܵ÷�
    [stf,ind] = sort(tf, 'descend');%����÷�
    stf = stf';ind = ind';
    city_name = importdata('./region_name.txt');%�����������
    cn_sort = city_name; 
    [r,c] = size(ind);
    for i = 1:c %�Գ��а���֮ǰ��ֵ����
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
    %title = {'��������', '���û���ָ��', '����'}; 
    %res = {title;res};
    %s = xlsread('C:/Users/bmi/Desktop/APMCM��ģ/matlab����/2009-2018ʡ������.xlsx');
    %range = size(s,1)+2;
    %s = xlswrite('C:/Users/bmi/Desktop/APMCM��ģ/matlab����/2009-2018ʡ������.xlsx', res, 1, num2str(range));
end
