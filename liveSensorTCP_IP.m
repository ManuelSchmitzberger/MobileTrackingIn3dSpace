%------------------------------------------------------------------------
% Insitute:     Salzburg University of Applied Sciences  
% Author:       Manuel Schmitzberger
% Departement:  Information Technology & Systems
% 
%       Bugs and comments to: manuel.schmitzberger@live.com
%------------------------------------------------------------------------

% Display Mobile device Sensor Live
% http://de.mathworks.com/help/instrument/writing-and-reading-data_f16-57447.html
clc;
clear;

echotcpip('on', 4000)


%%
t = tcpip('127.0.0.1', 4000)
fopen(t)
fprintf(t, 'Hello World 123')