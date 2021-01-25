function [c, ceq] = cantileverConstraints(x)
P = 100;  % N
L = 2000; % mm
sigma_all = 8; 


D_1=x(1);
n=x(2);
D_2=D_1*n;
x_v=0:1:2000;   %length of the beam

M_x=P.*x_v;

S_x=(pi/32)*(D_1+(D_2-D_1).*x_v./L).^3;

sigma_x= M_x./S_x;
sigma = sigma_x-sigma_all;

c = sigma;
ceq = [];