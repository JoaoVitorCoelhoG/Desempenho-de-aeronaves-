
g =  9.80665;
R = 287.05287;
S = 110.4;
gamma = 1.4;
beta = 1.458e-6;


% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')

h_pressao = 9144.0; %30 000 ft
h_densidade = 9753.6; %32 000 ft

dados_p = ISA(h_pressao);
dados_d = ISA(h_densidade);
p = dados_p(3);
d = dados_d(1);

Tmod = p/(R*d);

a = sqrt(gamma*R*Tmod);

Ma = 240/a;

T = Tmod;
mu = beta*T^(3/2)/(T + S);  

Re = d*a*Ma*4/mu;
