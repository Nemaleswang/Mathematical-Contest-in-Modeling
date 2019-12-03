city_name = xlsread('./问题三18年经济活力排名.xlsx','A1:A19');
economic_vitality = xlsread('./问题三18年经济活力排名.xlsx','B1:B19');
city_rank = xlsread('./问题三18年经济活力排名.xlsx','C1:C19');
title('The rank and economic_vitality of year 2018');
b = bar(city_rank,economic_vitality);
xlabel('Rank');
ylabel('Economic vitality');
legend('Economic vitality');

set(gca, 'xtick',1:19,'xticklabel',{'Beijing','Shanghai','Chongqing','Chengdu','Guangzhou','Tianjin','Shenzhen','Wuhan','Suzhou','Hangzhou','Nanjing','Xi''an','Zhengzhou','Qingdao','Changsha','Ningbo','Shenyang','Kunming','Dongguan'});
set(gca,'XTickLabelRotation',45);