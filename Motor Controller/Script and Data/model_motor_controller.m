clc
clear all

load MotorControllerData.mat

% Assign variables based on Excel Data %
MCFrequency = MotorControllerData.MotorFrequency
MCTorque = MotorControllerData.MotorTorque
Efficiency = MotorControllerData.Efficiency
% Create a fit using fit function, f = fit([x,y], z, 'poly23')%
[f, gof] = fit([MCFrequency, MCTorque], Efficiency, 'poly44')

plot(f, [MCFrequency, MCTorque], Efficiency)
