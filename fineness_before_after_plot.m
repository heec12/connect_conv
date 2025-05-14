clear all;
close all;

thickness = [0.2, 0.1, 0.05, 0.025];

Q10_left_before = [17.18498914618196, 14.641903305068698, 16.25871874, 17.36127273];
Q10_left_after = [69.21041286, 64.02960727, 76.84585734, 79.42365272];
Q10_right_before = [12.46684100265889, 18.944265382347506, 36.72036668, 37.77422069];
Q10_right_after = [65.73692342, 66.99018061, 76.04630707, 77.62694429];
Q10_left_percentage = [100, 100, 98.79, 99.32];
Q10_right_percentage = [100, 100, 92.16, 91.03];

Q15_left_before = [30.59093467, 27.51220511, 16.9917502, 27.04896731];
Q15_left_after = [80.91349449, 86.55515105, 92.57714075, 88.24710708];
Q15_right_before = [47.23966258, 25.59922648, 31.09388553, 26.60190787];
Q15_right_after = [80.49765087, 82.93398851, 88.88951563, 90.58599762];
Q15_left_percentage = [94.24, 99.44, 98.93, 97.15];
Q15_right_percentage = [87.14, 96.71, 98.73, 96.27];

Q20_left_before = [28.15333548, 36.76619922, 17.31903976, 9.243144631];
Q20_left_after = [95.74955489, 90.66325339, 99.48275155, 110.6662708];
Q20_right_before = [28.93618906, 29.4765652, 21.11750322, 16.16704767];
Q20_right_after = [103.1896577, 103.8596682, 107.0736586, 110.2144088];
Q20_left_percentage = [98.53, 95.03, 98.63, 100];
Q20_right_percentage = [99.12, 100, 100, 99.56];

subplot(1,3,1)
% plot(thickness, Q10_left_after./Q10_left_before,'-diamond','MarkerSize',10,...
%     'Color','#005AB5','LineWidth',1)
% hold on
% plot(thickness, Q10_right_after./Q10_right_before,'-diamond','MarkerSize',10,...
%     'Color','#DC3220','LineWidth',1)
plot(thickness, Q10_left_before,'-diamond','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
hold on
plot(thickness, Q10_left_after,'-o','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
plot(thickness, Q10_right_before,'-diamond','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
plot(thickness, Q10_right_after,'-o','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
set(gca,'fontsize',14)
xlabel('Continent thickness [Non-dim]')
ylabel('Fineness [Non-dim]')

subplot(1,3,2)
% plot(thickness, Q15_left_after./Q15_left_before,'-diamond','MarkerSize',10,...
%     'Color','#005AB5','LineWidth',1)
% hold on
% plot(thickness, Q15_right_after./Q15_right_before,'-diamond','MarkerSize',10,...
%     'Color','#DC3220','LineWidth',1)
plot(thickness, Q15_left_before,'-diamond','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
hold on
plot(thickness, Q15_left_after,'-o','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
plot(thickness, Q15_right_before,'-diamond','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
plot(thickness, Q15_right_after,'-o','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
set(gca,'fontsize',14)
xlabel('Continent thickness [Non-dim]')
ylabel('Fineness [Non-dim]')

subplot(1,3,3)
% plot(thickness, Q20_left_after./Q20_left_before,'-diamond','MarkerSize',10,...
%     'Color','#005AB5','LineWidth',1)
% hold on
% plot(thickness, Q20_right_after./Q20_right_before,'-diamond','MarkerSize',10,...
%     'Color','#DC3220','LineWidth',1)
plot(thickness, Q20_left_before,'-diamond','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
hold on
plot(thickness, Q20_left_after,'-o','MarkerSize',10,'Color','#005AB5',...
    'MarkerFaceColor','#005AB5','LineWidth',1)
plot(thickness, Q20_right_before,'-diamond','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
plot(thickness, Q20_right_after,'-o','MarkerSize',10,'Color','#DC3220',...
    'MarkerFaceColor','#DC3220','LineWidth',1)
set(gca,'fontsize',14)
xlabel('Continent thickness [Non-dim]')
ylabel('Fineness [Non-dim]')