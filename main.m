clear; clc;

% Declarations ****
F = 6000; % psi - loading
h = 3; % inches - distance btwn welds
L = 14; % inches - distance from weld to load site
T_U = 30000; % psi

b_lower = 0.1; % lower bound
L_lower = 0.1; % lower bound
b_upper = 10; % upper bound
L_upper = 20; % upper bound

% fmincon data
A = [];
b = [];
Aeq = [];
beq = [];
lb = [b_lower L_lower];
ub = [b_upper L_upper];
nonlcon = @(x)nonLinearConstraints(x,T_U,F,h); %nonlinear constraints
x0 = [1,1]; % start here

[x,vol] = fmincon(@weld,x0,A,b,Aeq,beq, lb, ub, nonlcon);
x % Output B then L 
vol % Output volume of weld