%Question No 3
%Find controllable canonical form of the system by similarity transformation
%and calculate the transformation matrix.

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

%Find the controllability matrix Q and check its rank 
Q= ctrb(A,B)
rank_of_Q = rank(Q)
Rank_Diff=length(A)-rank(Q)

%find the characteristic Equation of system and find matrix W
poly=det(s*I-A)
coeff = sym2poly(poly)
a1=coeff(2)
a2=coeff(3)
a3=coeff(4)
W=[a1 a2 a3 1; a2 a3 1 0; a3 1 0 0; 1 0 0 0]

%find transformation matrix P
Pinv=Q*W
P=inv(Pinv)

%find the controllable canonical form 
Abar=P*A*Pinv
Bbar=P*B
Cbar=C*Pinv
Dbar=D
