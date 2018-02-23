%%This the modified overdamped Duffing system.
%%Need to notice that if we change the system parameters likes 'a'
%%and 'b' in the main function. We need to change here also.

function yd = DE2(ti,wi,Input)
a=-1;
b=1;
yd=-a*wi-b*wi^(3)+Input;   
end
