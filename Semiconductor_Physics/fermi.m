clc
close all
clear all
t1 =input('enter temperature t1 :');
t2 =input('enter temperature t2 :');
t3 =input('enter temperature t3 :');
t4 =input('enter temperature t4 :');
e= linspace(-0.5,0.5,100);
f1=1./(1+exp(e/((0.026*t1)/300)));
f2=1./(1+exp(e/((0.026*t2)/300)));
f3=1./(1+exp(e/((0.026*t3)/300)));
f4=1./(1+exp(e/((0.026*t4)/300)));
plot(f1,e);
hold on;
plot(f2,e);
hold on;
plot(f3,e);
hold on;
plot(f4,e);
hold on;
xlabel('Energy');
ylabel('Probability');
legend('21UEC095');


