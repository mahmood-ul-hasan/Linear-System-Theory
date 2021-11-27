%Question No 4
% Find the eigenvalues of the system and the corresponding transformation matrix.

close all;
clear all;
clc;

A = [0 1 0; 0 0 1; -4 -8 -5];
B=[0 0 1]';
C=[1 0 0];
D=0;

EigenVal = eig(A)
[EigenVector,EigenVal_Digonal]=eig(A)

figure;
sys = ss(A, B, C, D);
pzmap(sys)

