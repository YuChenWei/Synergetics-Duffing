%The function is to generating the input signal.
%Meaning of parameters
%   A   :   This is the maginitude of the signal.
%   f0  :   This is frequency of the signal and its unit is "Hz".
%   D   :   This is the half noise intensity.
%   T   :   This is the total simulation time.
%   Monte   :   This is Monte Caro runs.




function [Signal,Noise,Input] = InputSignal(A,f0,D,T,Monte)
global Tmp;


switch nargin
    case 4
        Input=zeros(1,length(T));
        Signal=zeros(1,length(T));
        Signal=A*sin(2*pi*f0*T);
        Noise=(sqrt(2*abs(D))*randn(1,length(T)))/sqrt(T(2)-T(1));
        Input=Signal+Noise;
    case 5
        Input=zeros(Monte,length(T));
        Signal=zeros(Monte,length(T));
        Tmp=A*sin(2*pi*f0*T);
        for i=1:1:Monte
            Signal(i,:)=Tmp;
        end
        Noise=(sqrt(2*abs(D)).*randn(Monte,length(T)))./sqrt(T(2)-T(1));
        Input=Signal+Noise;
end

end

