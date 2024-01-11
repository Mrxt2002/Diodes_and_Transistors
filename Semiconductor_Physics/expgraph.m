x=0:0.01:10;
y= (x.^3.*cos(2.*pi.*x).*sin(x))/(x.^5 +2).*(x.^3 +1);
plot(x,y);
grid on;
title('experimental graphs');
xlabel('time');
ylabel('amplitude');