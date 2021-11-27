# Lab2_part1
## Calcualtion 

## Matlab Steps 
In Matlab for finding the state space model first we define the matrix A, B, C, D and parameters m, M, l, g in matlab then we find state space model using matlab command “sys = ss(A, B, C, D)”

# Lab2_part2
## Basic Theory 
Some introduction of similarity transformation is given below
x ̇=Ax+Bu
y=Cx+Du
System can be transferred by similarity transformation if there is nxn nonsingular matrix P
x ̅=Px
A ̅=PAP^(-1)
B ̅=PB
C ̅=CP^(-1)
D ̅=D
After transformation system is algebraically equivalent to below state equation
x ̅  ̇=A ̅x+B ̅u
y=C ̅x+D ̅u

## Matlab Steps 
1) From the given state space model we define the matrix A, B, C, D and parameters m, M, l, g  in matlab. As Eigen values computed by using state space matrix are same as poles of system. We find Eigenvalues and matrix of Eigenvector using matlab command “[EigenVector, EigenVal_Digonal]=eig(A)”. 
2) We plot the poles first by using command “pzmap(sys)”.

## Matlab Result
Matlab Result of Eigen Value and Eigen Vector is given below.


# Lab2_part3
## Matlab Steps 
1. From the given state space model we define the matrix A, B, C, D and parameters m, M, l, g  in matlab.
2. We find the controllability matrix (Kalman matrix) using matlab command Q= ctrb(A,B) and check its rank to confirm whether it’s controllable or not using matlab command rank(Q).  We found system is controllable having rank 4.
3. Then we find the characteristic polynomial of system to find matrix W. 
   1. The characteristic polynomial is  λ^4-10.78λ^2. 
	 2. This will give coefficients which are  a_1=0,a_2=-10.78,a_3=0
4. After that we find the inverse of the transformation matrix P by multiplying controllable matrix Q with the matrix of coefficients W.
5. Then we find the Abar, Bbar, Cbar, Dbar using
         A ̅=PAP^(-1)                  B ̅=PB                         C ̅=CP^(-1)                 D ̅=D

# Lab2_part4
Find observable canonical form of the system by similarity transformation and calculate the transformation matrix.
## Basic Theory 
## Matlab Steps 
1. From the given state space model we define the matrix A, B, C, D and parameters m, M, l, g  in matlab.
2. We find the observability matrix (Kalman matrix) using matlab command Qo= obsv(A,C) and check its rank to confirm whether it’s observable or not using matlab command rank(Qo).  We found system is observable having rank 4.
3. After that we find the inverse of the transformation matrix P by multiplying observable matrix Qo with the matrix of coefficients W.
4. Then we find the Abar, Bbar, Cbar, Dbar using       A ̅=PAP^(-1)                  B ̅=PB                         C ̅=CP^(-1)                 D ̅=D

# Lab2_part5 
Find the transfer function of the system. 
## Matlab Steps 
In Matlab for finding the transfer function of given system we use two different methods.
1) Method 01 -> 
  From the given state space model we define the  matrix A, B, C and D, then we find state space model using matlab command “sys = ss(A, B, C, D)”, after that we find transfer function using command “tf(sys)”.

2) Method 2 -> 
  From the given state space model we define the  matrix A, B, C and D, Then by using “ss2tf (A,B,C,D)” command which get us numerator and denominator of the transfer function.  Then to represent the numerator and denominator in terms of transfer function we use “tf (numerator, denominator)” command.
## Matlab Result
Matlab Result of Transfer Function is given below.

