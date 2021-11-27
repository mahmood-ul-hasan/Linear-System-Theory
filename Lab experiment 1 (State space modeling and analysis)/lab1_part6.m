%Question No 6
%Calculate the outputs of a system by using functions initial(), step() and lsim().
%Try to find the output of the following system between [0,10s] with a square wave input that has a period of 3s.

close all;
clear all;
clc;

A=[0 1;-2 -3];
B=[0 1]';
C=[1 0];
D=0;
X0=[2 1]';
t=0:0.01:10;
f=1/3;

u=square(2*pi*f*t);
sys = ss(A,B,C,D)
% initial response of state space model using “initial(sys,x0)” 
figure;
initial(sys,X0)
% the unit step response of state space model using “step(sys)” 
figure;
step(sys)
% output with square wave using “lsim(sys,u,t)”.
figure;
plot(t,u);
hold on;
lsim(sys ,u ,t)
axis([0 10 -2 2])
% output with square wave using “lsim(sys,u,t,x0)”.
figure;
plot(t,u);
hold on;
lsim(sys ,u ,t,X0)
axis([0 10 -2 2])


