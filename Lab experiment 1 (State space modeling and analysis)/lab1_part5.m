%Question No 5
%Calculate eAt by using function expm(): find the value of eAt when t=0.3

close all;
clear all;
clc;

A=[0 1; -2 -3];
syms t;

ExpAt = simplify(expm(t*A))
ExpAt_at_GivenTime=expm(0.3*A)


