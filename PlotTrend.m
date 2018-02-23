clc;clear;
D0 = 0.10; Dend = 0.15; dD = 0.005;
D=D0:dD:Dend;
Tmp1=load('D:\180219\RemovingCyclostationaryNonThreholdTrend\Signal A=0.10.mat');
Tmp2=load('D:\180219\RemovingCyclostationaryNonThreholdTrend\Signal A=0.15.mat');
Tmp3=load('D:\180219\RemovingCyclostationaryNonThreholdTrend\Signal A=0.20.mat');
figure;

% plot(D,Tmp1.zeroCross,'b+-',D,Tmp2.zeroCross,'rs-',D,Tmp3.zeroCross,'ko-');
% ylabel('Zero crossing times');
% xlabel('Half intensity of noise(D)');
% legend('A=0.1','A=0.15','A=0.2','Location','northwest');
% title('Comparsion of zero crossing times (non-threhold)');













plot(D,8000./Tmp1.zeroCross,'b+-',D,8000./Tmp2.zeroCross,'rs-',D,8000./Tmp3.zeroCross,'ko-');
ylabel('Residual time');
xlabel('Half intensity of noise(D)');
legend('A=0.1','A=0.15','A=0.2','Location','northeast');
title('Comparsion of residual time (non-threhold)');






% plot(D,1000./Tmp1.zeroCross,'b+-',D,1000./Tmp2.zeroCross,'rs-',D,1000./Tmp3.zeroCross,'ko-');
% ylabel('Residual time');
% xlabel('Half intensity of noise(D)');
% legend('A=0.1','A=0.15','A=0.2','Location','northeast');
% title('Comparsion of residual time (non-threhold)');