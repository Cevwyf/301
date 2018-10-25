clear all ; close all; clc;


% 2x + y = 5
% -6x + y = -3
%solution: x = 1, y=3
A = [2 1; -6 1]
b = [5; -3]
% x = [x; y] = [1, -3]
% Ax = b
x = A\b


% 2x1 + x2 + x3 = 1
% 4x1 + 3x2 + 3x3 = 1
% 8x1 + 7x2 + 9x3 = -1
% x1 = 1; x2 = 0, x3 = -1
A = [2 1 1; 4 3 3; 8 7 9]
b = [1; 1; -1]
% x = [x1; x2; x3]
x = A \ b

% x + y = 2
% x + y = 3
A = [1 1; 1 1]
b = [2; 3]
x = A\b

%% 
clear all; close all; clc;
A = rand(100, 100)
b = rand(100, 1)

% A*x = b

tic 
x = A\b
toc
























