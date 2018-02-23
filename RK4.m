function wi = RK4(t0,tf,N,w0,Fun,InputSignal,Coef)
Step=(tf-t0)/N;
Ti=t0;
Order=size(w0);
wi=zeros(Order(1),N);
wi(:,1)=w0;
switch nargin
    case 5
        for i=2:1:N
            K1=Step*Fun(Ti,wi(:,i-1));
            K2=Step*Fun(Ti+Step/2,wi(:,i-1)+K1/2);
            K3=Step*Fun(Ti+Step/2,wi(:,i-1)+K2/2);
            K4=Step*Fun(Ti+Step,wi(:,i-1)+K3);
            Tem=(K1+2*K2+2*K3+K4)/6;
            wi(:,i)=wi(:,i-1)+Tem;
            Ti=Ti+Step;
        end
    case 6   
        for i=2:1:N
            K1=Step*Fun(Ti,wi(:,i-1),InputSignal(i-1));
            K2=Step*Fun(Ti+Step/2,wi(:,i-1)+K1/2,InputSignal(i-1));
            K3=Step*Fun(Ti+Step/2,wi(:,i-1)+K2/2,InputSignal(i));
            K4=Step*Fun(Ti+Step,wi(:,i-1)+K3,InputSignal(i));
            Tem=(K1+2*K2+2*K3+K4)/6;
            wi(:,i)=wi(:,i-1)+Tem;
            Ti=Ti+Step;
        end
    case 7 %Note : this case is desgined only for Duffing equation%
        for i=2:1:N
            K1=Step*Fun(Ti,wi(:,i-1),InputSignal(i-1),Coef);
            K2=Step*Fun(Ti+Step/2,(wi(:,i-1)+K1/2),InputSignal(i-1),Coef);
            K3=Step*Fun(Ti+Step/2,(wi(:,i-1)+K2/2),InputSignal(i-1),Coef);
            K4=Step*Fun(Ti+Step,wi(:,i-1)+K3,InputSignal(i-1),Coef);
            Tem=(K1+2*K2+2*K3+K4)/6;
            wi(:,i)=wi(:,i-1)+Tem;
            Ti=Ti+Step;
        end
end
end

