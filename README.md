# Linear-System-Theory
Code and explanation of different labs related to linear system theory is present here

## Lab experiment 1 (State space modeling and analysis)
### 1 Objectives
1) Learn how to set up a transfer function, or a state space model of a system, and the
transformation between them using MATLAB.
2) Learn how to find the solution to the state space model using MATLAB.
3) Learn how to add different inputs to a system and observe the outputs of the system.
### 2 Experiment steps
1) For a discrete system：
y(k + 2) + 4 y(k +1) + 5y(k) = u(K + 2) + 2u(k +1) + u(k)
Find the transfer function of the system using function tf(), set up the state space
model, poles and zeros.

2) For the followingMIMO system, find the transfer function matrix using function
tf(), set up a state space model, find the poles and zeros of the system.

3) For the following state space mode, find the transfer function of the system.

4) Find the eigenvalues of the following system and the corresponding transformation
matrix.
5) Calculate eAt by using function expm(): find the value of eAt when t=0.3 .

6) Calculate the outputs of a system by using functions initial(), step() and lsim().
Try to find the output of the following system between [0,10s] with a square wave
input that has a period of 3s.

### 3 Lab report
A complete lab report must include the following:
1) Your steps/calculations and answers (including figures).
2) Your MATLAB program.

## Lab Experiment 2 (State space modeling of an inverted pendulum system)
### 1 Objectives
1) Learn how to build the state space model of a real system using MATLAB.
2) How to analyze and linearize a real system.
3) Learn how to find different forms of a system using similarity transformation.
### 2 Experiment steps
According to the given linear model, assume that:
state variables: movement y ,speed y ,angle , angle rate
input: force u
output: movement y
1) Build a state space model of the system and determine the parameters.
2) Find poles of the system by using the similarity transformation.
3) Find controllable canonical form of the system by similarity transformation and calculate the transformation matrix.
4) Find observable canonical form of the system by similarity transformation and calculate the transformation matrix.
5) Find the transfer function of the system.
