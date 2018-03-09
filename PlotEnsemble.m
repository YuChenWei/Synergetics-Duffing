%This file is plotting the ensemble mean of response.
clc;clear;
T0=0;Tf=10000;
dT=0.01;
T=T0:dT:Tf;
Len_Time=length(T);
A = 1.0;
D=0;
f0=0.001;
[Signal,Noise,Input] = InputSignal(A,f0,D,T);

Src='D:\180227\Tmp\';
Str1='Signal A=0.10, noise =0.05';
Str2='Signal A=0.10, noise =0.07';
Str3='Signal A=0.10, noise =0.10';
Str4='Signal A=0.10, noise =0.12';
Str5='Signal A=0.10, noise =0.15';
TmpFile1=load(strcat(Src,Str1,'.mat'));
TmpFile2=load(strcat(Src,Str2,'.mat'));
TmpFile3=load(strcat(Src,Str3,'.mat'))
TmpFile4=load(strcat(Src,Str4,'.mat'));
TmpFile5=load(strcat(Src,Str5,'.mat'));
Time=load('D:\180227\Time.mat');

% figure;
% plot(Time.T,mean(TmpFile1.Output),'b');
% hold on;
% plot(Time.T,mean(TmpFile2.Output),'r');
% hold on;
% plot(Time.T,mean(TmpFile3.Output),'y');
% legend('A=0.10','A=0.12','A=0.15');
% xlabel('Time');
% ylabel('Magnitude');
% title('Ensemble mean');
% xlim([0 2000]);

figure;
subplot(6,1,1);
plot(Time.T,Signal,'b');
title('Signal');
% ylim([-3 3]);
subplot(6,1,2);
plot(Time.T,TmpFile1.Output(1,:),'b');
title(Str1);
ylim([-3 3]);
subplot(6,1,3);
plot(Time.T,TmpFile2.Output(1,:),'b');
title(Str2);
ylim([-3 3]);
subplot(6,1,4);
plot(Time.T,TmpFile3.Output(1,:),'b');
title(Str3);
ylim([-3 3]);
subplot(6,1,5);
plot(Time.T,TmpFile4.Output(1,:),'b');
title(Str4);
ylim([-3 3]);
subplot(6,1,6);
plot(Time.T,TmpFile5.Output(1,:),'b');
title(Str5);
ylim([-3 3]);