clc 
clear all
close all


G=tf([2],[1 0.5 2])*tf([1],[1 0.5])

%step(Gs)
step(feedback(0.25*G,1))



kc0=0.25
ys=1
yp=0.408
tp=3.12
yu=0.249
yoo=0.45*(yp+yu)
Mo=(yp-yoo)/yoo
b=yoo/ys
A=(1.152*(Mo^2))+ (-1.607*Mo)+1
r=2*A*abs(b/(1-b))
theta=tp*(0.309+0.209*exp(-0.61*r))
tau=theta*r
k=1/kc0*abs(b/(1-b))
%sintonia pi por imc
lambda=2*theta
Ti=tau+theta/2
kp=(2*tau+theta)/(2*k*lambda)
ki=kp/Ti