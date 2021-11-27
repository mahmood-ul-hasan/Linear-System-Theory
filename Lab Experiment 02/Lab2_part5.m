%Question No 5
%Build a state space model of the system and determine the parameters.
close all;
clear all;
clc;

%Define the Parameters m, M, l, g.
m=0.1;
M=1;
l=1;
g=9.8;

%Define the matrix A, B, C, D, I
A=[0 1 0 0; 0  0 (-m*g)/M 0; 0 0 0 1; 0 0 (m+M)*g/(M*l) 0]
B=[0 1/M 0 -1/M ]'
C=[1 0 0 0]
D=0;
I=eye(4)

%Method 01 for finding Transfer function
sys = ss(A, B, C, D)
TransferFun01 = tf(sys)
 
% Method 02 for finding Transfer function
[num,den] = ss2tf (A,B,C,D);
TransferFun02 = tf(num,den)
