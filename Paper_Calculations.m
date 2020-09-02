%% IEEE Paper Calculations
clc
clf
close all
clear
%% ========================= User Inputs =========================
% Mass and inertia of the chaser
m = 10; % Mass of satellite [kg]
I_B = 100*eye(3); % Inertia matrix [kg*m^2]
M_B = zeros(8); % Dual inertia
M_B(1:3,1:3) = m*eye(3); % Insert spacecraft mass
M_B(4,4) = 1;
M_B(5:7, 5:7) = I_B; % Insert spacecraft inertia
M_B(8,8) = 1;


% Planet
r_p = 6.378e3; % Planet radius in [m]

% Dynamics initial conditions
% Chaser
N_r_BN = [0; 0; r_p + 1000e3]; % Assume 100km above north pole, inertial basis
N_q_B = [0; 0; 0; 1]; % Assume unit attitude quaternion, from chaser to inertial

% Target
N_r_DN = [r_p + 1000e3; 0; 0]; % Assume 100km above meridian/equator intersection, inertial basis
N_q_D = [0; 0; 0; 1]; % Assume unit attitude quaternion, from target to inertial

% External Forces
f_g = zeros(8,1); % Gravity force
f_dg = zeros(8,1); % 
f_j2 = zeros(8,1);
f_s = zeros(8,1);
f_mu = zeros(8,1);
f_d = zeros(8,1);
f_c = zeros(8,1);