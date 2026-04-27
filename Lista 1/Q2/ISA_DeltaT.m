function ISA_DeltaT = ISA_DeltaT(h_p,delta_T)

% Adiciona o caminho da pasta onde está a função
addpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')
%%%
S = 110.4;
beta = 1.458e-6;

dados = ISA(h_p);
densidade = dados(1)/(1 + delta_T/dados(2));
temperatura = dados(2) + delta_T;
pressao = dados(3);

velocidade_do_som = dados(4)*sqrt(1+ delta_T/dados(2));

% Viscosidade
mi = beta*temperatura^(3/2)/(temperatura + S);    

ISA_DeltaT = [densidade, temperatura, pressao, velocidade_do_som, mi];


% Remove o caminho ao final do script para manter o ambiente limpo
rmpath('/home/user/Área de trabalho/MVO/Lista 1/Q1')