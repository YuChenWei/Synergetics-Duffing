%This file is plotting the ensemble mean of response.
clc;clear;
TmpFile1=load('D:\180219\OriginalOutput\Signal A=0.10, noise =0.100.mat');
TmpFile2=load('D:\180219\OriginalOutput\Signal A=0.12, noise =0.100.mat');
TmpFile3=load('D:\180219\OriginalOutput\Signal A=0.15, noise =0.100.mat');
Time=load('D:\180219\Time.mat');
figure;
plot(Time.T,mean(TmpFile1.Output),'b');
hold on;
plot(Time.T,mean(TmpFile2.Output),'r');
hold on;
plot(Time.T,mean(TmpFile3.Output),'y');
legend('A=0.10','A=0.12','A=0.15');
xlabel('Time');
ylabel('Magnitude');
title('Ensemble mean');
xlim([0 2000]);