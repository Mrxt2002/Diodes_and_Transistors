clc
kn=1e-3;
vt=1.5;
vds=0:1:12;
vgs=4:2:8;
m=length(vds);
n=length(vgs);
for  i=1:n
    for  j=1:m
        if  vds(j)<vt
            id(i,j)=0;
        elseif vds(j)>=(vgs(i)-vt)
                id(i,j)= kn*(vgs(i)-vt)^2;
            elseif vds(j)<(vgs(i)-vt)
                    id(i,j)=kn*(2*(vgs(i)-vt)*vds(j)-vds(j)^2);
                end
            end
        end
       plot(vds,id) 
       title('Current Voltage Characteristics');
       xlabel('Voltage vd');
       ylabel('Current id');
       legend('21UEC095');