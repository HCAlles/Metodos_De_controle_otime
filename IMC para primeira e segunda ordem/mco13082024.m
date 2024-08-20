clear all
close all
clc
G=tf([5 1],[10 1])*tf([2],[10 1])*tf([1],[3 1])*tf([1],[4 1])
step(G)
y853 = 1.706
y353 = 0.706
t2 = 36
t1 = 14.6
K = 2
tau=0.67*(t2-t1)
theta=1.3*t1-0.29*t2
% Parâmetros PID
lambda = 2*theta
Kp = (2*tau + theta)/(K*(2*lambda+theta))
Ti = tau + theta/2
Ki = Kp/Ti
Td = tau*theta/(2*tau + theta)
Kd = Kp*Td



