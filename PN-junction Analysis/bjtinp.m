 bf = 120;
 af = bf/(1-bf);
 vbc = -1;
 vbe = 0.3:0.01:0.65;
 vt = ((1.38e-23)*300)/1.6e-19;
 ie = - 2e-16.*((exp(vbc./vt)-1)+1. *(exp(vbe./vt)-1)./af);
 plot(vbe,ie);
 title('INPUT CHARACTERSTICS OF BJT');
 xlabel('VBE');
 ylabel('IE')