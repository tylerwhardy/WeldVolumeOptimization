% First Model
b_1 = 0.15
h_1 = 0.1
l_1 = 0.5
% Second Model Left Hand
b_2 = 0.15
h_2 = 0.12
l_2 = 0.5
% Second Model Right Hand
b_3 = 0.15
h_3 = 0.08 
l_3 = 0.5
% Calculations
P = 7; % Force
E = 200*10^9; % Youngs Modulus

I_1 = b_1*((h_1)^3)/12;
I_2 = b_2*((h_2)^3)/12;
I_3 = b_3*((h_3)^3)/12;

I_avg = (I_2 + I_3) / 2;

% Results
MaxDeflection_1 = P*((l_1)^3)/(3*E*I_1)
MaxDeflection_2 = P*((l_2)^3)/(3*E*I_avg)

Stress_1 = (P*l_1*(h_1)/(2*I_1))/(10^6)
Stress_2 = (P*l_2*(h_3)/(2*I_avg))/(10^6)

clc; clear;

inch_to_meter = 0.0254
Deflection = 0.125 
L = 20
b = 2 
h = 0.5 
E4 = 30*10^6 
U = 0.33;

i_4 = b*((h)^3)/12;
P = Deflection * 3*E4*i_4/(L^3)

