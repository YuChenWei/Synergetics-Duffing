function [Output,ResT,ZeroCross] = EstimatedResiduateTime(Input,c,Scale,dT)
Threhold=c*Scale;
ResT=0;
PasNum=0;
ZeroCross=0;
PrevSign=0;
for i=2:1:length(Input)
    if(abs(Input(i))<Threhold)
        Output(i)=0;
    else
        Output(i)=Input(i);
        ResT=ResT+1;
    end
    
    if( (Output(i)*Output(i-1))<0)
        ZeroCross=ZeroCross+1;
    elseif((Output(i)*Output(i-1))==0)
        if((Output(i-1))~=0) 
            PrevSign=sign(Output(i-1));
        elseif((Output(i))~=0 )
            if( (PrevSign*sign(Output(i)))<0)
                ZeroCross=ZeroCross+1;
            end
        end
    end
    
end


ResT=ResT*dT;

end

