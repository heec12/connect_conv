clear all
close all

theta = 13.82;

lowRa_Ti_q10 = [0.9325,0.9412,0.9366];
lowRa_Ti_q15 = [1.0468,1.0447,1.0425];
%lowRa_Ti_q20 = [1.1253,1.1252,1.1233];
lowRa_Ti_q20 = [1.1252,1.1233];

lowRa_Ai_q10 = [2.0568,1.9519,1.9885];
lowRa_Ai_q15 = [1.4324,1.4409,1.4601];
%lowRa_Ai_q20 = [1.3387,1.3493,1.3747];
lowRa_Ai_q20 = [1.3493,1.3747];

lowRa_mu_q10 = exp(theta.*(1-lowRa_Ti_q10)).*lowRa_Ai_q10;
lowRa_mu_q15 = exp(theta.*(1-lowRa_Ti_q15)).*lowRa_Ai_q15;
lowRa_mu_q20 = exp(theta.*(1-lowRa_Ti_q20)).*lowRa_Ai_q20;

lowRa_eff_q10 = 5e6*(1+lowRa_Ti_q10./lowRa_mu_q10);
lowRa_eff_q15 = 5e6*(1+lowRa_Ti_q15./lowRa_mu_q15);
lowRa_eff_q20 = 5e6*(1+lowRa_Ti_q20./lowRa_mu_q20);

Ti_q10 = [0.7563, 0.7631, 0.7762, 0.7598];
Ti_q15 = [0.9189, 0.8986, 0.8974, 0.8900];
Ti_q20 = [1.0061, 0.9905, 0.9934, 0.9884];

Ai_q10 = [3.1352, 2.9824, 2.9162, 3.0235];
Ai_q15 = [2.0596, 2.1919, 2.3474, 2.6304];
Ai_q20 = [1.3279, 1.8330, 2.4091, 1.3981];

mu_q10 = exp(theta.*(1-Ti_q10)).*Ai_q10;
mu_q15 = exp(theta.*(1-Ti_q15)).*Ai_q15;
mu_q20 = exp(theta.*(1-Ti_q20)).*Ai_q20;

Ra_eff_q10 = 1e7*(1+Ti_q10./mu_q10);
Ra_eff_q15 = 1e7*(1+Ti_q15./mu_q15);
Ra_eff_q20 = 1e7*(1+Ti_q20./mu_q20);

lambda_tr_q10_left = [0.035, 0.014, 0.0175, 0.023333333];
lambda_tr_q10_right = [0.0175, 0.0175, 0.014, 0.014];
lambda_tr_q15_left = [0.007, 0.01, 0.007777778, 0.01];
lambda_tr_q15_right = [0.007777778, 0.01, 0.014, 0.007];
lambda_tr_q20_left = [0.003684211, 0.003684211, 0.003333333, 0.005];
lambda_tr_q20_right = [0.003333333, 0.004117647, 0.005, 0.004666667];

lowRa_fh = [3.10E-03,3.10E-03,3.10E-03,4.70E-03,3.80E-03,3.40E-03,...
    1.80E-03,1.80E-03];
lowRa_ps = [3.10E-03, 3.10E-03, 3.10E-03, 7.61E-03, 3.80E-03, ...
    3.40E-03, 1.80E-03, 1.80E-03];

fh_q10 = [0.00040007, 0.0004001, 0.0020017, 0.0020014];
Ti_fh_q15 = [0.9189, 0.8936, 0.8967];
Ra_eff_fh_q15 = 1e7*[1.1455, 1.0926, 1.0740];
fh_q15 = [0.002201, 0.0030035, 0.0048023];
fh_q20 = [0.0024006, 0.0026005, 0.0026005, 0.0062];

lambda_cm_q10_left = [0.00875, 0.007, 0.007, 0.005833333];
lambda_cm_q10_right = [0.011666667, 0.007, 0.007, 0.006363636];
lambda_cm_q15_left = [0.003888889, 0.005384615, 0.003888889, 0.003888889];
lambda_cm_q15_right = [0.004117647, 0.005, 0.003888889, 0.004117647];
lambda_cm_q20_left = [0.002121212, 0.0028, 0.0025, 0.0025];
lambda_cm_q20_right = [0.002258065, 0.002258065, 0.002258065, 0.002413793];

ps_q10 = [0.00040007, 0.0004001, 0.0051033, 0.0051036];
ps_q15 = [0.002201, 0.005003, 0.0030035, 0.0091044];
ps_q20 = [0.0024006, 0.0026005, 0.0026005, 0.0016];

T_man_low = 1700; %K
T_man_high = 1900; %K
Ev = 300000; %J/mol
R = 8.3144598; %J/mol/K
mu_0 = 9.7269e11; % Pa s
a = 3e-5; %K-1
rho = 4000; %kg m-3
g = 10; %m s-2
depth = 2890*1e3; %m
kappa = 1e-6; %m2 s-1

mu_lowT = mu_0*exp(Ev/R/T_man_low);
mu_highT = mu_0*exp(Ev/R/T_man_high);
Ra_1700 = (a * rho * g * 1700 * depth^3)/(mu_lowT * kappa);
Ra_eff_lowT = Ra_1700;%*(T_man_low/mu_lowT);
Ra_1900 = (a * rho * g * 1900 * depth^3)/(mu_highT * kappa);
Ra_eff_highT = Ra_1900;%*(T_man_high/mu_highT);

subplot(1,2,1)
loglog(Ra_eff_q10,lambda_tr_q10_left,"o",...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
loglog(Ra_eff_q10,lambda_tr_q10_right,"diamond",...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q15,lambda_tr_q15_left,"o",...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q15,lambda_tr_q15_right,"diamond",...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,lambda_tr_q20_left,"o",...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,lambda_tr_q20_right,"diamond",...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q10,fh_q10,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_fh_q15,fh_q15,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,fh_q20,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog([lowRa_eff_q10, lowRa_eff_q15, lowRa_eff_q20],lowRa_fh,"o",...
    'MarkerFaceColor','#FFFFFF', 'MarkerEdgeColor', '#000000')
xlim([5e6 1e8])
ylim([10^(-5) 10^(-1)])
set(gca,'fontsize',14)
xx = linspace(0.5e7, 1e8, 100);
a =0.319e+02;
b = -0.5491;
f = a*xx.^b;
loglog(xx,f, 'k--')
f1 = a*Ra_eff_lowT^b;
f1 = f1*ones(length(xx));
f2 = a*Ra_eff_highT^b;
f2 = f2*ones(length(xx));
loglog(xx,f1,'color','#D3D3D3')
loglog(xx,f2,'color','#D3D3D3')
hold off

subplot(1,2,2)
loglog(Ra_eff_q10,lambda_tr_q10_left,"o",...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
hold on
loglog(Ra_eff_q10,lambda_tr_q10_right,"diamond",...
    'MarkerFaceColor','#648FFF', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q15,lambda_tr_q15_left,"o",...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q15,lambda_tr_q15_right,"diamond",...
    'MarkerFaceColor','#DC267F', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,lambda_tr_q20_left,"o",...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,lambda_tr_q20_right,"diamond",...
    'MarkerFaceColor','#FFC107', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q10,ps_q10,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q15,ps_q15,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog(Ra_eff_q20,ps_q20,"o",...
    'MarkerFaceColor','#000000', 'MarkerEdgeColor', '#000000')
loglog([lowRa_eff_q10, lowRa_eff_q15, lowRa_eff_q20],lowRa_ps,"o",...
    'MarkerFaceColor','#FFFFFF', 'MarkerEdgeColor', '#000000')
xlim([5e6 1e8])
ylim([10^(-5) 10^(-1)])
set(gca,'fontsize',14)
f1 = a*Ra_eff_lowT^b;
f1 = f1*ones(length(xx));
f2 = a*Ra_eff_highT^b;
f2 = f2*ones(length(xx));
loglog(xx,f1,'color','#D3D3D3')
loglog(xx,f2,'color','#D3D3D3')

loglog(xx,f, 'k--')

hold off

