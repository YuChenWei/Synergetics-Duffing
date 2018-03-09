clc;
clear;

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
TmpFile3=load(strcat(Src,Str3,'.mat'));
TmpFile4=load(strcat(Src,Str4,'.mat'));
TmpFile5=load(strcat(Src,Str5,'.mat'));
% TmpFile6=load('D:\180227\Tmp\Signal A=0.60, noise =0.10.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Period = (1/f0)*(1/dT);%%%%%%%%%%%%%%%%FUCKING IMPORTANT%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




% figure;
% subplot(6,1,1);
% plot((0:1:Period),Signal(3*Period:1:4*Period));
% title('Signal');
% subplot(6,1,2);
% plot((0:1:Period),TmpFile1.Output(1,3*Period:1:4*Period));
% title(Str1);
% subplot(6,1,3);
% plot((0:1:Period),TmpFile2.Output(1,3*Period:1:4*Period));
% title(Str2);
% subplot(6,1,4);
% plot((0:1:Period),TmpFile3.Output(1,3*Period:1:4*Period));
% title(Str3);
% subplot(6,1,5);
% plot((0:1:Period),TmpFile4.Output(1,3*Period:1:4*Period));
% title(Str4);
% subplot(6,1,6);
% plot((0:1:Period),TmpFile5.Output(1,3*Period:1:4*Period));
% title(Str5);


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Delay=0*Period;
% % 
% % 
% % 
% figure;
% subplot(3,2,1);
% plot(Signal(3*Period:1:4*Period-Delay),Signal(3*Period+Delay:1:4*Period));
% title('Signal');
% subplot(3,2,2);
% plot(TmpFile1.Output(3*Period:1:4*Period-Delay),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
% title(Str1);
% subplot(3,2,3);
% plot(TmpFile2.Output(3*Period:1:4*Period-Delay),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
% title(Str2);
% subplot(3,2,4);
% plot(TmpFile3.Output(3*Period:1:4*Period-Delay),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
% title(Str3);
% subplot(3,2,5);
% plot(TmpFile4.Output(3*Period:1:4*Period-Delay),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
% title(Str4);
% subplot(3,2,6);
% plot(TmpFile5.Output(3*Period:1:4*Period-Delay),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
% title(Str5);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-----------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure;
%     subplot(3,2,1);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),Signal(3*Period+Delay:1:4*Period));
%     title('Signal');
%     subplot(3,2,2);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
%     title(Str1);
%     subplot(3,2,3);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
%     title(Str2);
%     subplot(3,2,4);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
%     title(Str3);
%     subplot(3,2,5);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
%     title(Str4);
%     subplot(3,2,6);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
%     title(Str5);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-----------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Delay=0.25*Period;
% % 
% % 
% % 
% figure;
% subplot(3,2,1);
% plot(Signal(3*Period:1:4*Period-Delay),Signal(3*Period+Delay:1:4*Period));
% title('Signal');
% subplot(3,2,2);
% plot(TmpFile1.Output(3*Period:1:4*Period-Delay),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
% title(Str1);
% subplot(3,2,3);
% plot(TmpFile2.Output(3*Period:1:4*Period-Delay),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
% title(Str2);
% subplot(3,2,4);
% plot(TmpFile3.Output(3*Period:1:4*Period-Delay),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
% title(Str3);
% subplot(3,2,5);
% plot(TmpFile4.Output(3*Period:1:4*Period-Delay),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
% title(Str4);
% subplot(3,2,6);
% plot(TmpFile5.Output(3*Period:1:4*Period-Delay),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
% title(Str5);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-----------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure;
%     subplot(3,2,1);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),Signal(3*Period+Delay:1:4*Period));
%     title('Signal');
%     subplot(3,2,2);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
%     title(Str1);
%     subplot(3,2,3);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
%     title(Str2);
%     subplot(3,2,4);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
%     title(Str3);
%     subplot(3,2,5);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
%     title(Str4);
%     subplot(3,2,6);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
%     title(Str5);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%-----------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Delay=0.5*Period;
% 
% 
% 
% figure;
% subplot(3,2,1);
% plot(Signal(3*Period:1:4*Period-Delay),Signal(3*Period+Delay:1:4*Period));
% title('Signal');
% subplot(3,2,2);
% plot(TmpFile1.Output(3*Period:1:4*Period-Delay),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
% title(Str1);
% subplot(3,2,3);
% plot(TmpFile2.Output(3*Period:1:4*Period-Delay),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
% title(Str2);
% subplot(3,2,4);
% plot(TmpFile3.Output(3*Period:1:4*Period-Delay),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
% title(Str3);
% subplot(3,2,5);
% plot(TmpFile4.Output(3*Period:1:4*Period-Delay),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
% title(Str4);
% subplot(3,2,6);
% plot(TmpFile5.Output(3*Period:1:4*Period-Delay),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
% title(Str5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%-------------------------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure;
%     subplot(3,2,1);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),Signal(3*Period+Delay:1:4*Period));
%     title('Signal');
%     subplot(3,2,2);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
%     title(Str1);
%     subplot(3,2,3);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
%     title(Str2);
%     subplot(3,2,4);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
%     title(Str3);
%     subplot(3,2,5);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
%     title(Str4);
%     subplot(3,2,6);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
%     title(Str5);
%%%%%%%%%%%%%%%%%%%%%%%%%%---------------------------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Delay=0.75*Period;



figure;
subplot(3,2,1);
plot(Signal(3*Period:1:4*Period-Delay),Signal(3*Period+Delay:1:4*Period));
title('Signal');
subplot(3,2,2);
plot(TmpFile1.Output(3*Period:1:4*Period-Delay),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
title(Str1);
subplot(3,2,3);
plot(TmpFile2.Output(3*Period:1:4*Period-Delay),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
title(Str2);
subplot(3,2,4);
plot(TmpFile3.Output(3*Period:1:4*Period-Delay),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
title(Str3);
subplot(3,2,5);
plot(TmpFile4.Output(3*Period:1:4*Period-Delay),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
title(Str4);
subplot(3,2,6);
plot(TmpFile5.Output(3*Period:1:4*Period-Delay),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
title(Str5);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%-------------------------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     figure;
%     subplot(3,2,1);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),Signal(3*Period+Delay:1:4*Period));
%     title('Signal');
%     subplot(3,2,2);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile1.Output(1,3*Period+Delay:1:4*Period));
%     title(Str1);
%     subplot(3,2,3);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile2.Output(1,3*Period+Delay:1:4*Period));
%     title(Str2);
%     subplot(3,2,4);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile3.Output(1,3*Period+Delay:1:4*Period));
%     title(Str3);
%     subplot(3,2,5);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile4.Output(1,3*Period+Delay:1:4*Period));
%     title(Str4);
%     subplot(3,2,6);
%     plot((0:1:length(Signal(3*Period+Delay:1:4*Period))-1),TmpFile5.Output(1,3*Period+Delay:1:4*Period));
%     title(Str5);
%%%%%%%%%%%%%%%%%%%%%%%%%%---------------------------------------------------%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure;
% subplot(3,2,1);
% plot(Signal(3*Period:1:4*Period),Signal(4*Period:1:5*Period));
% title('Signal');
% subplot(3,2,2);
% plot(TmpFile1.Output(3*Period:1:4*Period),TmpFile1.Output(1,4*Period:1:5*Period));
% title(Str1);
% subplot(3,2,3);
% plot(TmpFile2.Output(3*Period:1:4*Period),TmpFile2.Output(1,4*Period:1:5*Period));
% title(Str2);
% subplot(3,2,4);
% plot(TmpFile3.Output(3*Period:1:4*Period),TmpFile3.Output(1,4*Period:1:5*Period));
% title(Str3);
% subplot(3,2,5);
% plot(TmpFile4.Output(3*Period:1:4*Period),TmpFile4.Output(1,4*Period:1:5*Period));
% title(Str4);
% subplot(3,2,6);
% plot(TmpFile5.Output(3*Period:1:4*Period),TmpFile5.Output(1,4*Period:1:5*Period));
% title(Str5);







