function V = Volume(x)

L = 2000; % mm 

D_1=x(1);
n=x(2);
D_2=D_1*n;

V = (pi*L/6)*(D_2^2/2+D_1*D_2/2+D_1^2/2);
 