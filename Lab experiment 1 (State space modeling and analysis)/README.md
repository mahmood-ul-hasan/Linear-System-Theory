## Question 01
For a discrete system：
y(k + 2) + 4 y(k +1) + 5y(k) = u(K + 2) + 2u(k +1) + u(k)
Find the transfer function of the system using function tf(), set up the state space model, poles and zeros.

## Solution of Question 01
### Calculations
For finding the transfer function we should rewrite the equation in output/input form
and in terms of discrete time variable ‘z’.
z^2 y+4zy+5y=z^2 u+2zu+u
(z^2+4z+5)y=(z^2+2z+1)u
y/u=  ((z^2+2z+1))/((z^2+4z+5) )
Tansfer Function=  ((z^2+2z+1))/((z^2+4z+5) )    ……………   eq(1)
To set up the state space model we convert the transfer function eq (1) in proper Rational function.
((z^2+2z+1))/((z^2+4z+5) )=1+(-2z-4)/((z^2+4z+5) )

Controllable canonical form Realization is 
A=[■(0&1@-5&-4)],B=[■(0@1)],      C=[■(-4&-2)],       D=1

### Matlab Steps 
	In Matlab for finding the transfer function we define numerator and denominator of above equation eq(1) and set the sample time (Ts) for discrete time transfer function by using the command tf (numerator, denominator, Ts).
	To find the state space model from computed transfer function we will use
tf2ss(numerator, denominator) command which will give us the matrix A, B, C, D.
	To find the poles and zeroes from computed transfer function we will use the command [poles,zeros]= pzmap(TranFun).


