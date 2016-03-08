% Display Mobile device Sensor Live
% accelerometer+","+magneticField+","+gyroscope
clc;
clear;

addpath('./data');


serialConnection=serial('/dev/ttyS0')
fopen(serialConnection);