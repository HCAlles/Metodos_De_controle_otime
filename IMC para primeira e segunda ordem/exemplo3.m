clc
clear all
close all


%G=tf([2 1],[1 0.1 1])
G=tf([1 1],[1 2 4])
kc0=1
figure
step(feedback(G*kc0,1))
figure
step(feedback(G,1))
ys=1
yp=0.309
tp=0.781
yu=0.194

yoo=0.45*(yp+yu)
M0=(yp-yoo)/yoo
b=(yoo/ys)
A=1.152*(M0^2) +(-1.607*M0)+1
r=2*A*abs(b/(1-b))
theta=tp*(0.309+0.209*exp(-0.61*r))
tau=theta*r
k=1/kc0*abs(b/(1-b))
%sintonia pid por IMC
lambda=1*theta % da para auterar o numero de thetas
kp=(2*tau+theta)/(2*k*lambda)
%kp=0.8
ti=tau+theta/2
ki=kp/ti
%ki=2

