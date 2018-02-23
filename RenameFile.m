%This file is to raname file for other applications. 


clc;
clear;
src='D:\180219\OriginalOutput\';
SrcContents=dir(src);
Des='D:\180219\OriginalOutput\';

% for i=3:1:length(SrcContents)
%     
%     if(SrcContents(i).name(13)==',')
%         SrcContents(i).name
%         TmpFile=load(strcat(src,SrcContents(i).name));
%         Output=TmpFile.Output;
%         TmpStr=strcat(SrcContents(i).name(1:1:12),'0',SrcContents(i).name(13:1:end))
%         save(strcat(Des,TmpStr),'Output');
%         delete(strcat(src,SrcContents(i).name));  
%         clear Output;
%     end
% end

% for i=3:1:length(SrcContents)
%     
%     if(length(SrcContents(i).name)==30)
%         SrcContents(i).name
%         
%         TmpFile=load(strcat(src,SrcContents(i).name));
%         Output=TmpFile.Output;
%         TmpStr=strcat(SrcContents(i).name(1:1:26),'0',SrcContents(i).name(27:1:end))
%         save(strcat(Des,TmpStr),'Output');
%         clear Output;
%         delete(strcat(src,SrcContents(i).name));
%     end
% end