%------------------------------------------------------------------------
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Manuel Schmitzberger
% Departement:  Information Technology & Systems
% 
%       Bugs and comments to: manuel.schmitzberger@live.com
%------------------------------------------------------------------------

% Display Mobile device Sensor Live
% accelerometer+","+magneticField+","+gyroscope
clc;
clear;

addpath('./data');


serialConnection=serial('/dev/ttyS0')
fopen(serialConnection);