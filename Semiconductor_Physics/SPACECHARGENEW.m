clc
ep=8.85e-14;
k=0.0259;
q=1.6e-19;
ni=1.5e10;
na=4.0e15;
n0=ni*ni/na;       
Ld=sqrt(k*11.8*ep/q/na);
Vs=linspace(-0.5,1,1000);
es=exp(-Vs/k)+Vs/k-1+(n0/na)*(exp(Vs/k)-Vs/k-1); 
qs=11.8*ep*sqrt(2)*k/Ld*sqrt(es);
plot(Vs,log10(qs));

title('Surface Potential vs Charge Density')
xlabel('Surface Potential');
ylabel('Charge Density');
legend('21UEC095');