%Question No 1
%Build a state space model of the system and determine the parameters.
close all;
clear all;
clc;

%Define the Parameters m, M, l, g.
m=0.1;
M=1;
l=1;
g=9.8;

%Define the matrix A, B, C, D 
A=[0 1 0 0; 0  0 (-m*g)/M 0; 0 0 0 1; 0 0 (m+M)*g/(M*l) 0]
B=[0 1/M 0 -1/M ]'
C=[1 0 0 0]
D=0

%Find state space model using matlab command “sys = ss(A, B, C, D)”.
sys = ss(A,B,C,D)
step(sys)