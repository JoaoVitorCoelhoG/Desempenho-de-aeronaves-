Tb_1 = 288.15;
Tb_2 = 216.65;
Tb_3 = 216.65;
L1 = -6.5e-3;
g =  9.80665;
R = 287.05287;
Pb1 = 101325;
P = 92000;


hp_linha =  Tb_1/L1*((P/Pb1)^(-R*L1/g) -1);


% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')

dados = ISA(hp_linha);
T_isa  = dados(2);
T = 273.15+30;
delta_T = T - T_isa;

hp = 15240;
ISA_DeltaT(hp,delta_T)