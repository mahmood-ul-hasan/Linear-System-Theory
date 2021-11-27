%Question No 1
%For a discrete system? y(k + 2) + 4 y(k +1) + 5y(k) = u(K + 2) + 2u(k +1) + u(k)
%Find the transfer function of the system using function tf(), set up the state space model, poles and zeros.

clear all
close all
clc

% Finding Transfer Function
num = [1 2 1];
den = [1 4 5];
TranFun = tf(num ,den, -1)


% Finding State space model
[A,B,C,D]= tf2ss(num, den)


%Finding poles and zeros
[poles,zeros]= pzmap(TranFun)
figure;
pzmap(TranFun)

