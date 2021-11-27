%Question No 3
%For the given state space mode, find the transfer function of the system4

close all;
clear all;
clc;

A = [0 1 0; 0 0 1; -6 -11 -6];
B = [0 0 6]';
C=[1 0 0];
D=0;

% Method 01 for finding Transfer function
sys = ss(A, B, C, D)
TransferFun01 = tf(sys)

% Method 02 for finding Transfer function
[num,den] = ss2tf (A,B,C,D);
TransferFun02 = tf(num,den)
