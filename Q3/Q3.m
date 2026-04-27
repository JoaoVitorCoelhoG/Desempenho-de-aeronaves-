Tb_1 = 288.15;
Tb_2 = 216.65;
Tb_3 = 216.65;
L1 = -6.5e-3;
g =  9.80665;
R = 287.05287;
Pb1 = 101325;
P = 101700; %Pa
hp =  Tb_1/L1*((P/Pb1)^(-R*L1/g) -1);

% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')
QNH = 1016; % Variável declarada e não utilizada
dados = ISA(hp);
T = dados(2);

% Correção 1: Conversão para Kelvin
delta_T = (25 + 273.15) - T; 

hp_linha = 647.09;
dados_linha = ISA(hp_linha);
densidade_linha = dados_linha(1);
pressao_linha = dados_linha(3);

% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q2')

% Correção 2: Aplicação do Delta T na altitude alvo
dados_d = ISA_DeltaT(hp_linha, delta_T); 
d = dados_d(1);