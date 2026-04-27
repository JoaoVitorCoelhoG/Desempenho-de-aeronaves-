function ISA = ISA(h)
g =  9.80665;
R = 287.05287;
beta = 1.458e-6;
S = 110.4;
gamma = 1.4;
format long g

if  h <= 11000
    L = -6.5e-3;
    Tb = 288.15;
    Pb = 101325;
    rho_0 = 1.225;

    % L != 0
    T = Tb + L*(h - 0);
    rho = rho_0*(T/Tb)^(-(1+g/(R*L)));
    P  = Pb*(T/Tb)^(-g/(R*L));

    % ISA(11000)=[0.363917642717319 216.65 22632.0400950078 295.069493509071 1.42161307964134e-05]
    
elseif h > 11000  && h <= 20000
    L = 0;
    Tb = 216.65;
    Pb = 22632;
    rho_0 = 0.363917642717319;

    % L == 0
    T = Tb + L*(h - 11000);
    rho = rho_0*exp(-g*(h-11000)/(R*Tb));
    P = Pb*exp(-g*(h-11000)/(R*Tb));
    % ISA(20000)=[0.0880346834861835 216.65 5474.8677249675 295.069493509071 1.42161307964134e-05]

elseif h > 20000  && h <= 32000
    L = 1e-3;
    Tb = 216.65;
    Pb = 5474.87;
    rho_0 = 0.0880346834861835;

    % L != 0
    T = Tb + L*(h - 0);
    rho = rho_0*(T/Tb)^(-(1+g/(R*L)));
    P  = Pb*(T/Tb)^(-g/(R*L));


end
% Viscosidade
mi = beta*T^(3/2)/(T + S);    
%Velocidade do Som
a = sqrt(gamma*R*T);

ISA  = [rho, T, P, a, mi];


