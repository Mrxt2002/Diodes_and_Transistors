k = 1.381e-23;
temp = 300;
q = 1.602e-19;
den = 2e-10;
area = 5.0;
beta_f = 120;
beta_r = 0.3;
Vt = k*temp/q;
Is = den*area;
alpha_f = beta_f/(1+beta_f);
alpha_r = beta_r/(1+beta_r);
Ies = Is/alpha_f;
Vbe = 0.3:0.01:0.65;
Isc = Is/alpha_r;
m = length(Vbe);
for j=1:m
    Ifr = Ies*exp((Vbe/Vt)-1);
    Ir1 = Isc*exp((-1.0/Vt)-1);
    Ib1 = abs(-Ifr+alpha_r*Ir1);
end
plot(Vbe,Ib1);
hold on
Vbe = 0.3:0.01:0.65;
Isc = Is/alpha_r;
m = length(Vbe);
for j=1:m
    Ifr = Ies*exp((Vbe/Vt)-1);
    Ir1 = Isc*exp((-1.0/Vt)-1);
    Ib1 = abs(-Ifr+alpha_r*Ir1);
end
plot(Vbe,Ib1);
hold on
Vbe = 0.3:0.01:0.55;
Isc = Is/alpha_r;
m = length(Vbe);
for j=1:m
    Ifr = Ies*exp((Vbe/Vt)-1);
    Ir1 = Isc*exp((-1.0/Vt)-1);
    Ib1 = abs(-Ifr+alpha_r*Ir1);
end
plot(Vbe,Ib1);
hold on