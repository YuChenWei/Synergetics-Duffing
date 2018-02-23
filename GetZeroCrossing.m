%This file is get the zero crossing number of a time sequence.
%It use the "EstimateResiduateTime" function to get the zero cross times.
%Typically, it is not recommend to use the 'ResT' parameter for stochastic process.
%The "EstimateResiduateTime" can be either threhold or nonthrehold.

clc;
clear;

%This is the stable equilibrium point of the modified Duffing system.
c=1;
%This is the scale for threhold.The range is 0.0~1.0 . The threhold value is defined as "c*Scale".
%When the value is "0",it means that it is nonthrehold.
Scale=0;
%This parameter is the Monte Caro runs.
Mon=50;

%Source folder
zcr='D:\180219\OriginalOutput\';
zcrContents=dir(zcr);

%Desination folder
dsc='D:\180219\RemovingCyclostationaryNonThrehold\';


for i=3:1:length(zcrContents)
    i
    TmpFile=load(strcat(zcr,zcrContents(i).name));
    for j=1:1:Mon
        [Output,ResT(j),ZeroCross(j)] =EstimatedResiduateTime(TmpFile.Output(j,200001:1:end),c,Scale,0.01);
    end
    TmpStr=strcat(dsc,zcrContents(i).name);
    save(TmpStr,'ResT','ZeroCross');
    clear ResT ZeroCross;
end






















