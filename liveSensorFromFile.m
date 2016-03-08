% Display Mobile device Sensor Live
% accelerometer+","+magneticField+","+gyroscope
clc;
clear;
close all;

addpath('./data');
x = 0;
xMax = 50;
% data
fid = fopen('pipe');

while(1)
    x = x+1;
    tline = fgets(fid);
    disp(tline)
    data = strsplit(tline, ',');
    
    % data Acceloremeter
    yA1(x) = str2double(data(1));
    yA2(x) = str2double(data(2));
    yA3(x) = str2double(data(3));
    % data Magnetometer
    yM1(x) = str2double(data(4));
    yM2(x) = str2double(data(5));
    yM3(x) = str2double(data(6));
    % data Gyroscope
    yG1(x) = str2double(data(7));
    yG2(x) = str2double(data(8));
    yG3(x) = str2double(data(9));
   
    % plot Accelerometer
    drawnow; 
    subplot(3,1,1);
    plot(yA1,'r','linewidth',3)
    grid on;
    hold on;
    plot(yA2,'g','linewidth',3)
    plot(yA3,'b','linewidth',3)
    
    title('ACCELEROMETER');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    % plot Magnetometer
    drawnow; 
    subplot(3,1,2);
    plot(yM1,'r','linewidth',3)
    grid on;
    hold on;
    plot(yM2,'g','linewidth',3)
    plot(yM3,'b','linewidth',3)
    
    title('MAGNETOMETER');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    % plot Gyrometer
    drawnow; 
    subplot(3,1,3);
    plot(yG1,'r','linewidth',3)
    grid on;
    hold on;
    plot(yG2,'g','linewidth',3)
    plot(yG3,'b','linewidth',3)
    
    title('GYROMETER');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    if(x > xMax) 
        x = 0;
        yA1 = 0;
        yA2 = 0;
        yA3 = 0;
        
        yM1 = 0;
        yM2 = 0;
        yM3 = 0;
        
        yG1 = 0;
        yG2 = 0;
        yG3 = 0;
        clf;  %clear figure
        hold on; % again hold on after clearing
    end
end

fclose(fid);
