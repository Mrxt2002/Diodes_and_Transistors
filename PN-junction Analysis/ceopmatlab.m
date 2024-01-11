clc
k = 1.38e-23 ;
t = 300 ;
q = 1.602e-19 ;
af = 0.98;
ar = 0.35;
Vt = k*t/q;
Ie = 1.1e-15/af;
Ics = 1.1e-15/ar;
Vce = [0 0.07 0.1 0.2 0.3 0.4 0.5 0.6 0.7 1 2 4 6];
Ib = 0.06;
n = length(Ib);
m = length(Vce);
for i = 1:n
    for j = 1:m
        If = Ie*exp((Ib/Vt)-1);
        Vbc = Ib - Vce;
        Ir = Ics*exp((Vbc/Vt)-1);
        Ic = af*If-Ir;
    end
end
Ic1 = Ic(1,:);
plot(Vce,Ic1);
hold on
 









Ib = 0.05;
n = length(Ib);
m = length(Vce);
for i = 1:n
    for j = 1:m
        If = Ie*exp((Ib/Vt)-1);
        Vbc = Ib - Vce;
        Ir = Ics*exp((Vbc/Vt)-1);
        Ic = af*If-Ir;
    end
end
Ic1 = Ic(1,:);
plot(Vce,Ic1);
hold on

Ib = 0.04;
n = length(Ib);
m = length(Vce);
for i = 1:n
    for j = 1:m
        If = Ie*exp((Ib/Vt)-1);
        Vbc = Ib - Vce;
        Ir = Ics*exp((Vbc/Vt)-1);
        Ic = af*If-Ir;
    end
end
Ic1 = Ic(1,:);
plot(Vce,Ic1);
hold on

Ib = 0.03;
n = length(Ib);
m = length(Vce);
for i = 1:n
    for j = 1:m     
        If = Ie*exp((Ib/Vt)-1);
        Vbc = Ib - Vce;
        Ir = Ics*exp((Vbc/Vt)-1);
        Ic = af*If-Ir;
    end
end
Ic1 = Ic(1,:);
plot(Vce,Ic1);

xlabel('Vce(V)');
ylabel('Ic(mA)');
legend('21UEC095');
hold on