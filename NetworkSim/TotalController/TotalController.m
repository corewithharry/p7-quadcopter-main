clear ;
close all;

run Parameters.m
run StateSpace.m
run xyzController.m

w_max=230;
w_min=-161;
ts=0;
motor_tau=ts/3;

step_x=-1;
step_y=1;
step_z=0.5;

Tstep=0.3;
% input_x=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ...
%     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ...
%     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0].';
% input_y=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ...
%     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 ...
%     0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ...
%     1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1].';
% input_z=[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ...
%     -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1 -0.1...
%     -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2 -0.2...
%     -0.3 -0.3 -0.3 -0.3 -0.3 -0.3 -0.3 -0.3 -0.3  zzzzzz  -0.3 -0.3 -0.3 -0.3 -0.3 -0.3 -0.3...
%     -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 -0.4 ...
%     -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5 -0.5...
%     -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6 -0.6...
%     -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7 -0.7].';

% n=10;
% input_x=[zeros(1,n) ones(1,n) ones(1,n) ones(1,n) ones(1,n) ones(1,n) ones(1,n)...
%     ones(1,n) zeros(1,n) zeros(1,n) zeros(1,n) zeros(1,n) zeros(1,n) zeros(1,n)].';
% input_y=[zeros(1,n) zeros(1,n) zeros(1,n) zeros(1,n) ones(1,n) ones(1,n) ones(1,n)...
%     ones(1,n) ones(1,n) ones(1,n) zeros(1,n) zeros(1,n) zeros(1,n)].';
% input_z=[-0.1*ones(1,n) -0.1*ones(1,n) -0.1*ones(1,n) -0.1*ones(1,n) -0.1*ones(1,n)...
%      -0.1*ones(1,n) -0.1*ones(1,n) zeros(1,n) zeros(1,n) zeros(1,n) zeros(1,n)...
%      zeros(1,n) zeros(1,n) zeros(1,n)].';
 
input_z=[0:-0.1:-10 -10*ones(1,20)];
input_x=cos(input_z);
input_y=sin(input_z);
 