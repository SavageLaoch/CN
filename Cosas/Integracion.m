function [Im,It,Is,I2,I3] = Integracion(f,a)
Im = Icompab(f,a,2,0);
It = Icompab(f,a,[1,1],[-1,1]);
Is = It/3 + 2*Im/3;
I2 = Icompab(f,a,[1,1],[-1/sqrt(3),1/sqrt(3)]);
I3 = Icompab(f,a,[5,8,5],[-sqrt(3/5),0,sqrt(3/5)])/9;
end