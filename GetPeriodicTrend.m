%This file is to get the zero-cross trend in a period.


clc;
clear;
src='D:\180219\PeriodicRemovingCyclostationaryNonThrehold\';
srcContents=dir(src);
j=1;
zeroCross=zeros(1,11);

dsc='D:\180219\PeriodicRemovingCyclostationaryNonThreholdTrend\';

for i=3:1:length(srcContents)
    strcat(src,srcContents(i).name)
    TmpFile=load(strcat(src,srcContents(i).name));
    zeroCross(j)=mean(mean(TmpFile.ZeroCross));

    
    if(j==11)
        
        TmpStr=strcat(dsc,srcContents(i).name(1:1:13),'.mat')
        save(TmpStr,'zeroCross');
        clear zeroCross;
        zeroCross=zeros(1,11);
        j=0;
    end
    j=j+1;
end