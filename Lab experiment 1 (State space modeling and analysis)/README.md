# lab1_part1
For a discrete system：
y(k + 2) + 4 y(k +1) + 5y(k) = u(K + 2) + 2u(k +1) + u(k)
Find the transfer function of the system using function tf(), set up the state space model, poles and zeros.

## Calculations
The Caluculation and derivation can be seen [Lab1_117035990004_Mahmood-ul-hassan.pdf](https://github.com/mahmood-ul-hasan/Linear-System-Theory/blob/main/Lab%20experiment%201%20(State%20space%20modeling%20and%20analysis)/Lab1_117035990004_Mahmood-ul-hassan.pdf).

## Matlab Steps 
1) In Matlab for finding the transfer function we define numerator and denominator of above equation eq(1) and set the sample time (Ts) for discrete time transfer function by using the command tf (numerator, denominator, Ts).
2) To find the state space model from computed transfer function we will use tf2ss(numerator, denominator) command which will give us the matrix A, B, C, D.
3) To find the poles and zeroes from computed transfer function we will use the command [poles,zeros]= pzmap(TranFun).

# lab1_part2

## Matlab Steps 
1. In Matlab for finding the transfer function of MIMO system we use two different methods.
   1. Method (01)<br/> For given MIMO system we define numerator and denominator of each element of given matrix by using the command “tf (numerator, denominator)”, after this compile all the entries in single matrix form.
   2.  Method (02)<br/>  We create a matrix “MIMO_num” contains all numerator of MIMO matrix and also create another matrix “MIMO_den” contains all denominator of MIMO matrix, then find the transfer function using command “tf(MIMO_num, MIMO_den)”.
             
2. In Matlab for finding the state space model of MIMO system we use two different methods.
   1. we use “ss(Transfer fun)” command which will give us state space parameters
   2. we use “ssdata(ss(Transfer fun,’min’))” command which will give us state space parameters.
            
3. To find the poles and zeroes from computed transfer function we will use the comand [poles,zeros]= pzmap(TranFun).

## Matlab Result
The figure of results can be seen [Lab1_117035990004_Mahmood-ul-hassan.pdf](https://github.com/mahmood-ul-hasan/Linear-System-Theory/blob/main/Lab%20experiment%201%20(State%20space%20modeling%20and%20analysis)/Lab1_117035990004_Mahmood-ul-hassan.pdf).


# lab1_part3
## Matlab Steps 
In Matlab for finding the transfer function of given system we use two different methods.
1. From the given state space model we define the  matrix A, B, C and D, then we find state space model using matlab command “sys = ss(A, B, C, D)”, after that we find transfer function using command “tf(sys)”.

2. From the given state space model we define the  matrix A, B, C and D, Then by using “ss2tf (A,B,C,D)” command which get us numerator and denominator of the transfer function.  Then to represent the numerator and denominator in terms of transfer function we use “tf (numerator, denominator)” command.

## Matlab Result
Matlab Result of Transfer Function is given  [Lab1_117035990004_Mahmood-ul-hassan.pdf](https://github.com/mahmood-ul-hasan/Linear-System-Theory/blob/main/Lab%20experiment%201%20(State%20space%20modeling%20and%20analysis)/Lab1_117035990004_Mahmood-ul-hassan.pdf).

# lab1_part4
## Matlab Steps 
1.	From the given state space model we define the  matrix A, B, C and D, in matlab then we find Eigenvalues and matrix of Eigenvector using matlab command “[EigenVector, EigenVal_Digonal]=eig(A)”

2. Eigen values computed by using state space matrix are same as poles of system. We can also find Eigen Values by using command “pzmap(sys)”.

## Matlab Result
Matlab Result of eigenvalues is given [Lab1_117035990004_Mahmood-ul-hassan.pdf](https://github.com/mahmood-ul-hasan/Linear-System-Theory/blob/main/Lab%20experiment%201%20(State%20space%20modeling%20and%20analysis)/Lab1_117035990004_Mahmood-ul-hassan.pdf).

