city_name = xlsread('./������18�꾭�û�������.xlsx','A1:A19');
economic_vitality = xlsread('./������18�꾭�û�������.xlsx','B1:B19');
city_rank = xlsread('./������18�꾭�û�������.xlsx','C1:C19');
title('The rank and economic_vitality of year 2018');
b = bar(city_rank,economic_vitality);
xlabel('Rank');
ylabel('Economic vitality');
legend('Economic vitality');

set(gca, 'xtick',1:19,'xticklabel',{'Beijing','Shanghai','Chongqing','Chengdu','Guangzhou','Tianjin','Shenzhen','Wuhan','Suzhou','Hangzhou','Nanjing','Xi''an','Zhengzhou','Qingdao','Changsha','Ningbo','Shenyang','Kunming','Dongguan'});
set(gca,'XTickLabelRotation',45);