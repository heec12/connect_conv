clear all;
close all;

dam0_q10_dist = [0.48, 0.48];
dam0_q10_dcont = [0.90, 0.95];
dam0_q10_theta = [11.513, 11.513];
dam0_q10_fh = [0.0023019, 0.0023017];
dam0_q10_pers = [0.0065044, 0.0065051];
dam0_q20_dist = [1.01, 1.01, 1.01];
dam0_q20_dcont = [0.80, 0.95, 0.975];
dam0_q20_theta = [11.513, 11.513, 11.513];
dam0_q20_fh = [0.0020003, 0.0021003, 0.0021004];
dam0_q20_pers = [0.0020003, 0.0021003, 0.0021004];

dam1_q10_dist = [0.31, 0.31, 0.31, 1.41, 1.41, 1.41];
dam1_q10_dcont = [0.80, 0.85, 0.90, 0.95, 0.9625, 0.975];
dam1_q10_theta = [13.82, 13.82, 13.82, 13.82, 13.82, 13.82];
dam1_q10_fh = [0.00040007, 0.00040015, 0.0004001, 0.0020017, 0.0020015, 0.0020014];
dam1_q10_pers = [0.00040007, 0.00040015, 0.0004001, 0.0051033, 0.0051036, 0.0051036];
dam1_q15_dist = [0.59, 0.59, 0.59, 0.71, 0.55];
dam1_q15_dcont = [0.80, 0.85, 0.95, 0.9625, 0.975];
dam1_q15_theta = [13.82, 13.82, 13.82, 13.82, 13.82];
dam1_q15_fh = [0.002201, 0.0022017, 0.0030035, 0.0043017, 0.0048023];
dam1_q15_pers = [0.002201, 0.0051044, 0.0030035, 0.0028011, 0.0091044];
dam1_q20_dist = [1.04, 1.04, 1.04, 1.04, 0.32, 1.04];
dam1_q20_dcont = [0.80, 0.85, 0.90, 0.95, 0.9625, 0.975];
dam1_q20_theta = [13.82, 13.82, 13.82, 13.82, 13.82, 13.82];
dam1_q20_fh = [0.0024006, 0.0031009, 0.0026005, 2.60E-03, 8.00E-04, 6.20E-03];
dam1_q20_pers = [0.0024006, 0.0031009, 0.0026005, 2.60E-03, 8.00E-04, 1.60E-03];

dam2_q10_dist = [0.61, 0.61];
dam2_q10_dcont = [0.80, 0.975];
dam2_q10_theta = [16.12, 16.12];
dam2_q10_fh = [0.0067058, 0.0027016];
dam2_q10_pers = [0.0067058, 0.0027016];
dam2_q15_dist = [0.59, 0.59];
dam2_q15_dcont = [0.80, 0.975];
dam2_q15_theta = [16.12, 16.12];
dam2_q15_fh = [0.0042027, 0.0049037];
dam2_q15_pers = [0.0042027, 0.0037026];
dam2_q20_dist = [0.56, 0.56];
dam2_q20_dcont = [0.80, 0.975];
dam2_q20_theta = [16.12, 16.12];
dam2_q20_fh = [0.0019007, 0.0026006];
dam2_q20_pers = [0.0019007, 0.0026006];

subplot(4,2,1)
plot(dam0_q10_dist, dam0_q10_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_q20_dist, dam0_q20_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_dist, dam1_q10_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_dist, dam1_q15_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_dist, dam1_q20_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam2_q10_dist, dam2_q10_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_q15_dist, dam2_q15_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_q20_dist, dam2_q20_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('First hit')
xlabel('Initial distance [Non-dim]')
ylabel('Time [Non-dim]')
%set(gca,'fontsize', 14) 

subplot(4,2,2)
plot(dam0_q10_dist, dam0_q10_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_q20_dist, dam0_q20_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_dist, dam1_q10_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_dist, dam1_q15_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_dist, dam1_q20_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam2_q10_dist, dam2_q10_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_q15_dist, dam2_q15_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_q20_dist, dam2_q20_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('Persistency')
xlabel('Initial distance [Non-dim]')
ylabel('Time [Non-dim]')
ax = gca;
ax.YAxis.Exponent = -3;
%set(gca,'fontsize', 14) 

subplot(4,2,3)
plot(1-dam0_q10_dcont, dam0_q10_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(1-dam0_q20_dcont, dam0_q20_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q10_dcont, dam1_q10_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q15_dcont, dam1_q15_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q20_dcont, dam1_q20_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q10_dcont, dam2_q10_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q15_dcont, dam2_q15_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q20_dcont, dam2_q20_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('First hit')
xlabel('Continent thickness [Non-dim]')
ylabel('Time [Non-dim]')
%set(gca,'fontsize', 14) 

subplot(4,2,4)
plot(1-dam0_q10_dcont, dam0_q10_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(1-dam0_q20_dcont, dam0_q20_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q10_dcont, dam1_q10_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q15_dcont, dam1_q15_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(1-dam1_q20_dcont, dam1_q20_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q10_dcont, dam2_q10_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q15_dcont, dam2_q15_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(1-dam2_q20_dcont, dam2_q20_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('Persistency')
xlabel('Continent thickness [Non-dim]')
ylabel('Time [Non-dim]')
ax = gca;
ax.YAxis.Exponent = -3;
%set(gca,'fontsize', 14) 

subplot(4,2,5)
plot(dam0_q10_theta, dam0_q10_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_q20_theta, dam0_q20_fh,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_theta, dam1_q10_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_theta, dam1_q15_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_theta, dam1_q20_fh,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam2_q10_theta, dam2_q10_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_q15_theta, dam2_q15_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_q20_theta, dam2_q20_fh,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('First hit')
xlabel('\theta_h')
ylabel('Time [Non-dim]')
%set(gca,'fontsize', 14) 

subplot(4,2,6)
plot(dam0_q10_theta, dam0_q10_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_q20_theta, dam0_q20_pers,'o','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_theta, dam1_q10_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_theta, dam1_q15_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_theta, dam1_q20_pers,'^','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam2_q10_theta, dam2_q10_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_q15_theta, dam2_q15_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_q20_theta, dam2_q20_pers,'square','MarkerSize',12,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('Persistency')
xlabel('\theta_h')
ylabel('Time [Non-dim]')
ax = gca;
ax.YAxis.Exponent = -3;
%set(gca,'fontsize', 14)

dam0_Q = [10, 10, 20, 20, 20];
dam0_time_ft = [0.0023019, 0.0023017, 0.0020003, 0.0021003, 0.0021004];
dam0_time_pers = [0.0065044, 0.0065051, 0.0020003, 0.0021003, 0.0021004];

dam1_q10_Q = [10, 10, 10, 10, 10, 10];
% dam1_q10_ft = [4, 4, 4, 20, 20, 20];
% dam1_q10_pers = [4, 4, 4, 51, 51, 51];
dam1_q15_Q = [15, 15, 15, 15, 15];
% dam1_q15_ft = [22, 22, 30, 43, 48];
% dam1_q15_pers = [22, 51, 30, 28, 91];
dam1_q20_Q = [20, 20, 20, 20, 20, 20];
% dam1_q20_ft = [24, 31, 26, 26, 8, 62];
% dam1_q20_pers = [24, 31, 26, 26, 8, 16];

dam2_Q = [10, 10, 15, 15, 20, 20];
dam2_time_ft = [0.0067058, 0.0027016, 0.0042027, 0.0049037, ...
    0.0019007, 0.0026006];
dam2_time_pers = [0.0067058, 0.0027016, 0.0042027, 0.0037026, ...
    0.0019007, 0.0026006];

subplot(4,2,7)
% plot(dam0_Q, dam0_time_ft,'o','MarkerSize',10,...
%     'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
plot(dam0_Q(1:2), dam0_time_ft(1:2),'o','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_Q(3:5), dam0_time_ft(3:5),'o','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_Q, dam1_q10_fh,'^','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_Q, dam1_q15_fh,'^','MarkerSize',10,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_Q, dam1_q20_fh,'^','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
% plot(dam2_Q, dam2_time_ft,'o','MarkerSize',10,...
%     'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(1:2), dam2_time_ft(1:2),'square','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(3:4), dam2_time_ft(3:4),'square','MarkerSize',10,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(5:6), dam2_time_ft(5:6),'square','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('First hit')
xlabel('Internal heating rate [Non-dim]')
ylabel('Time [Non-dim]')
%set(gca,'fontsize', 14) 

subplot(4,2,8)
%plot(dam0_Q, dam0_time_pers,'o','MarkerSize',10,...
%    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
plot(dam0_Q(1:2), dam0_time_pers(1:2),'o','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
plot(dam0_Q(3:5), dam0_time_pers(3:5),'o','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
plot(dam1_q10_Q, dam1_q10_pers,'^','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam1_q15_Q, dam1_q15_pers,'^','MarkerSize',10,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam1_q20_Q, dam1_q20_pers,'^','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
% plot(dam2_Q, dam2_time_pers,'o','MarkerSize',10,...
%     'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(1:2), dam2_time_pers(1:2),'square','MarkerSize',10,...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(3:4), dam2_time_pers(3:4),'square','MarkerSize',10,...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
plot(dam2_Q(5:6), dam2_time_pers(5:6),'square','MarkerSize',10,...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
hold off
title('First hit')
xlabel('Internal heating rate [Non-dim]')
ylabel('Time [Non-dim]')
ax = gca;
ax.YAxis.Exponent = -3;
%set(gca,'fontsize', 14) 
