P0 = 101325;
rho0 = 1.225;
a_0 = 340.295;
Vcas = 347.82;
V = Vcas;
delta_P = P0*(6^6/5^(7/2)*(Vcas/a_0)^7/((7*(Vcas/a_0)^2-1)^(5/2))-1);
h = 10668;


% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')
dados = ISA(h);
p = dados(3);
d = dados(1);

Ma = sqrt(5 * ((1 + delta_P/p)^(2/7) - 1));
V_TAS = sqrt((7*p/d) * ((1 + delta_P/p)^(2/7) - 1));
V_EAS = sqrt((7*p/rho0) * ((1 + delta_P/p)^(2/7) - 1));