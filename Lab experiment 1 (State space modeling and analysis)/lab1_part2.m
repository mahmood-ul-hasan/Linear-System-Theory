%Question No 2
%For the MIMO system, find the transfer function matrix using function tf(), set up a state space model, find the poles and zeros of the system.

clear all;
close all;
clc;

% Method 01 for finding Transfer function
TF11=tf([1 2 1],[1 5 6]);
TF12=tf([0 1 3],[0 1 1]);
TF21=tf([0 2 1],[1 6 11 6]);
TF22=tf([0 0 1],[0 1 3]);
TF_MIMO_01=[TF11,TF12;TF21,TF22]

% Method 02 for finding Transfer function
MIMO_num = {[1 2 1 ] [0 1 3]; [0 2 1] [0 0 1]};
MIMO_den = {[1 5 6 ] [0 1 1]; [1 6 11 6] [0 1 3]};
TF_MIMO_02=tf(MIMO_num,MIMO_den)


% Method 01 for finding State space model
[A,B,C,D]=ssdata(ss(TF_MIMO_02,'min'))
% Method 01 for finding State space model
sys = ss(TF_MIMO_01)


%Finding poles and zeros
figure
[poles,zeros]= pzmap(sys)
pzmap(TF_MIMO_02)
figure
pzmap(sys)


