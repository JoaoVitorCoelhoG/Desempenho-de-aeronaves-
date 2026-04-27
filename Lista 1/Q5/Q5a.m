P0 = 101325;
rho0 = 1.225;
V_cas = 128.611;
V = V_cas;
delta_P = P0*((1 + (V^2*rho0)/(7*P0))^(7/2) - 1);
h = 1524;

% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')
dados = ISA(h);
p = dados(3);
d = dados(1);

Ma = sqrt(5 * ((1 + delta_P/p)^(2/7) - 1));
V_TAS = sqrt((7*p/d) * ((1 + delta_P/p)^(2/7) - 1));
V_EAS = sqrt((7*p/rho0) * ((1 + delta_P/p)^(2/7) - 1));