t= 300:10:1000;
na= 10^14;
nd= 10^16;
eion = 0.05;
x= sqrt(na*nd)/300^(1.5);
y= t.^(1.5);
z=exp(-eion./(2.*0.026.*t./300));
ni=x.*y.*z;
p=semilogy(t,ni,'LineWidth' ,1.5);
xlabel('Temperature');
ylabel('Initial Concentration');
title('Extrinsic carrier concentration');
legend('21UEC095');
grid on;

 