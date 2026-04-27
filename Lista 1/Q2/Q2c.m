

h= 1524.0; %5 000 ft
g =  9.80665;
R = 287.05287;
Pb = 101325;

delta_T = 15;

dados = ISA_DeltaT(h,delta_T);

p = dados(3);
h_1 = h - delta_T*R/g*log(p/Pb);

delta_T = -15;
dados = ISA_DeltaT(h,delta_T);

p = dados(3);
h_2 = h - delta_T*R/g*log(p/Pb);
