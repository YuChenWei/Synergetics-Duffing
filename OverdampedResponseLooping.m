%This is the main function for simulation the overdamped system.



clc;
clear;
%%Simulation parameters
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
T0=0;Tf=10000;
%The time step for Runge Kutta method method.
%One should notice that it should be satisfied the 
%Nyquist sampling frequency.
dT=0.01;
T=T0:dT:Tf;
Len_Time=length(T);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This save the time information to ".mat" file.
%One should change the destination by himself.
save('D:\180227\Tmp\Time.mat','T');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This the Monte Caro runs.
Monte=50;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Input( noise and signal) parameters
A0 = 0.1; Aend = 0.5; dA = 0.05;
D0 = 0.05; Dend = 0.15; dD = 0.01;
f0=0.001;
Signal=zeros(Monte,Len_Time);
Noise=zeros(Monte,Len_Time);
Input=zeros(Monte,Len_Time);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%System parameters
%% Notice : When change the system parameters likes 'a' and 'b', we need to change the DE's coefficients.  
a=-1;
b=1;
c=sqrt(-a/b);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Output parameters
RunIndex=1;
TotalRun=length(A0:dA:Aend)*length(D0:dD:Dend);
Output=zeros(Monte,Len_Time);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This code segment is applied for testing the response of some specific parameters
%One should use this part to check that the respone will reach the cyclo-stationary before
%using the amplitude and intensity sampling.



% tic
% [Signal,Noise,Input] = InputSignal(0.2,f0,0.125,T,Monte);
% Output = RK4(T0,Tf,Len_Time,sqrt(-a/b),@DE2,Input(1,:));
% % save('G:\180203\OriginalOutput\Test.mat','Output');
% toc
% figure;
% subplot(411);
% plot(T,Signal(1,:));
% subplot(412);
% plot(T,Noise(1,:));
% subplot(413);
% plot(T,Input(1,:));
% subplot(414);
% plot(T,Output(1,:));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Here are the simulation code for sampling amplitude and intensity.
%Again, one should use the previous part to check that the response will reach the cyclostaionary. 


for A=A0:dA:Aend
    for D=D0:dD:Dend
        TmpStr=strcat('D:\180227\OriginalOutput2\Signal A= ',num2str(A),', noise = ',num2str(D),'.mat');
        [Signal,Noise,Input] = InputSignal(A,f0,D,T,Monte);
        for i=1:1:Monte
            Output(i,:) = RK4(T0,Tf,Len_Time,sqrt(-a/b),@DE2,Input(i,:)); 
            RunIndex=RunIndex+1
        end
        save(TmpStr,'Output');
        clear Output ;
        clc;
    end
end
