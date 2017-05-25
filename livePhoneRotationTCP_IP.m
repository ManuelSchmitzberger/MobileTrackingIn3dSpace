%------------------------------------------------------------------------
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Manuel Schmitzberger
% Departement:  Information Technology & Systems
% 
%       Bugs and comments to: manuel.schmitzberger@live.com
%------------------------------------------------------------------------

% Display Mobile device Sensor Live
% http://de.mathworks.com/help/instrument/writing-and-reading-data_f16-57447.html
close all;
clear all;
clc;

%echotcpip('on', 4000)

% Configuration and connection
disp ('Receiver started');
% mobile device IP
t=tcpip('10.3.1.183', 4000,'NetworkRole','server');

% Wait for connection
disp('Waiting for connection');
fopen(t);
disp('Connection OK');


x = 0;
xMax = 50;

% Read data from the socket
while (true)
    x = x+1;
    tline = fgets(t);
    disp(tline)
    data = strsplit(tline, ',');
    %disp(data)
        
    % azimuth
    yA1(x) = str2double(data(11));
    % pitch
    yA2(x) = str2double(data(12));
    % roll
    yA3(x) = str2double(data(13));
   
    % plot azimuth
    drawnow; 
    subplot(3,1,1);
    plot(yA1,'r','linewidth',3)
    
    title('azimuth');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    % plot pitch
    drawnow; 
    subplot(3,1,2);
    plot(yA2,'g','linewidth',3)
    
    title('pitch');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    % plot roll
    drawnow; 
    subplot(3,1,3);
    plot(yA3,'b','linewidth',3)
    
    title('roll');
    xlabel('Time in seconds');
    ylabel('Digital Value');
    xlim([0 xMax])
    
    if(x > xMax) 
        x = 0;
        yA1 = 0;
        yA2 = 0;
        yA3 = 0;
        clf;  %clear figure
        hold on; % again hold on after clearing
    end
end