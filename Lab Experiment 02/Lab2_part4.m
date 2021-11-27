%%Question No 3
%Find observable canonical form of the system and
%calculate the transformation matrix.

close all;
clear all;
clc;

%Define the Parameters m, M, l, g.
syms s;
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

%Find the observability  matrix Q and check its rank 
Qo= obsv(A,C)
rank_of_Qo=rank(Qo)

%find the characteristic Equation of system and find matrix W
poly=det(s*I-A)
coeff = sym2poly(poly)
a1=coeff(2)
a2=coeff(3)
a3=coeff(4)
W=[a1 a2 a3 1; a2 a3 1 0; a3 1 0 0; 1 0 0 0]

%find transformation matrix P
P=W*Qo
Pinv=inv(P)

%find the observable canonical form 
Abar=P*A*Pinv
Bbar=P*B
Cbar=C*Pinv
Dbar=D

